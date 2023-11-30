FROM docker.elastic.co/logstash/logstash:7.17.0-arm64

# Install the logstash-filter-rest plugin
# RUN bin/logstash-plugin install logstash-filter-rest
RUN bin/logstash-plugin install logstash-output-exec
RUN bin/logstash-plugin install logstash-filter-json_encode