import couchdb
import pandas as pd
import plotly.graph_objects as go

couchdb_server_url = "http://admin:abc@127.0.0.1:5984/"
database_name = "fabric7"

peer_validation_df = pd.DataFrame()
orderer_df = pd.DataFrame()
received_info_df = pd.DataFrame()
endorsement_info_df = pd.DataFrame()

try:
    couch = couchdb.Server(couchdb_server_url)
    db = couch[database_name]

    all_docs = db.view('_all_docs', include_docs=True)

    for row in all_docs:
        doc = row.doc

        if ('validationInfo' or "committmentInfo" or "receivedInfo" in doc):
            peer_data = {key: value if value != "nan" and key not in ('_id', '_rev') else None for key, value in doc.items()}
            peer_validation_df = peer_validation_df.append(peer_data, ignore_index=True)

        if 'ordererTestFieldValue' in doc:

            orderer_data = {key: value if value != "nan" and key not in ('_id', '_rev') else None for key, value in doc.items()}
            peer_validation_df = peer_validation_df.append(peer_data, ignore_index=True)

    peer_df = peer_validation_df.groupby('id').agg(lambda x: ', '.join(x.dropna().astype(str))).reset_index()

    peer_df = peer_df.drop(['_id', '_rev', 'receivedInfo', 'validationInfo', 'committed_id', 'committmentInfo'], axis=1, errors='ignore')
    
    timestamp_columns = ['received_log_timestamp', 'validated_block_timestamp', 'committed_block_timestamp']

    for column in timestamp_columns:
        peer_df[column] = pd.to_datetime(peer_df[column], errors='coerce')
        peer_df[column] = peer_df[column].apply(lambda x: int(x.timestamp()) if pd.notnull(x) else None)


    columns_to_convert = ['committed_block_timestamp', 'committed_commit_duration', 'committed_block_and_pvtdata_commit_time', 'committed_state_commit_time', 'committed_state_validation_time', 'validated_processing_time']

    for column in columns_to_convert:
        peer_df[column] = pd.to_numeric(peer_df[column], errors='coerce')

    # Perform the calculations
    peer_df['state_validation_start'] = peer_df['committed_block_timestamp'] - peer_df['committed_commit_duration']
    peer_df['state_validation_end'] = peer_df['state_validation_start'] + peer_df['committed_commit_duration']
    peer_df['block_com_start'] = peer_df['state_validation_end']
    peer_df['block_com_end'] = peer_df['committed_block_and_pvtdata_commit_time'] + peer_df['block_com_start']
    peer_df['state_com_start'] = peer_df['block_com_end']
    peer_df['state_com_end'] = peer_df['committed_state_commit_time'] + peer_df['state_com_start']
    peer_df['state_validation_end'] = peer_df['state_com_end']


    peer_df['peer'] = peer_df['id'].str.extract(r'(\S+\.org\d+)')[0]

    columns_to_average = ['committed_state_validation_time', 
                          'committed_block_and_pvtdata_commit_time', 'committed_state_commit_time']

    # Calculating the average for each peer
    average_per_peer = peer_df.groupby('peer')[columns_to_average].mean()

    fig = go.Figure()

    for peer, row in average_per_peer.iterrows():
        sorted_data = sorted(row.items(), key=lambda x: x[1])

        # Extracting data for plotting
        labels = [item[0] for item in sorted_data]
        values = [item[1] for item in sorted_data]

        for i, (label, value) in enumerate(zip(labels, values)):
            fig.add_trace(go.Bar(
                x=[value],
                y=[i],
                name=f'{peer}: {label}',
                text=[f'{label}: {value} ms'],
                hoverinfo='text',
                orientation='h'
            ))

    fig.update_layout(
        title='Timeline Block Figure for Commit Duration',
        xaxis=dict(title='Time (milliseconds)'),
        yaxis=dict(title='Task'),
        showlegend=True,
        height=400
    )

    fig.show()

except couchdb.ResourceNotFound:
    print(f"Database '{database_name}' not found.")
except couchdb.ServerError as e:
    print(f"Error connecting to CouchDB: {e}")
except Exception as e:
    print(f"An error occurred: {e}")