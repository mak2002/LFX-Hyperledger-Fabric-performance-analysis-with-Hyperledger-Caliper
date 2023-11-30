2023-08-03 05:41:42.890 UTC 0001 INFO [localconfig] completeInitialization -> Kafka.Version unset, setting to 0.10.2.0
2023-08-03 05:41:42.901 UTC 0002 INFO [orderer.common.server] prettyPrintStruct -> Orderer config values:
        General.ListenAddress = "0.0.0.0"
        General.ListenPort = 7050
        General.TLS.Enabled = true
        General.TLS.PrivateKey = "/var/hyperledger/orderer/tls/server.key"
        General.TLS.Certificate = "/var/hyperledger/orderer/tls/server.crt"
        General.TLS.RootCAs = [/var/hyperledger/orderer/tls/ca.crt]
        General.TLS.ClientAuthRequired = false
        General.TLS.ClientRootCAs = []
        General.TLS.TLSHandshakeTimeShift = 0s
        General.Cluster.ListenAddress = ""
        General.Cluster.ListenPort = 0
        General.Cluster.ServerCertificate = ""
        General.Cluster.ServerPrivateKey = ""
        General.Cluster.ClientCertificate = "/var/hyperledger/orderer/tls/server.crt"
        General.Cluster.ClientPrivateKey = "/var/hyperledger/orderer/tls/server.key"
        General.Cluster.RootCAs = [/var/hyperledger/orderer/tls/ca.crt]
        General.Cluster.DialTimeout = 5s
        General.Cluster.RPCTimeout = 7s
        General.Cluster.ReplicationBufferSize = 20971520
        General.Cluster.ReplicationPullTimeout = 5s
        General.Cluster.ReplicationRetryTimeout = 5s
        General.Cluster.ReplicationBackgroundRefreshInterval = 5m0s
        General.Cluster.ReplicationMaxRetries = 12
        General.Cluster.SendBufferSize = 10
        General.Cluster.CertExpirationWarningThreshold = 168h0m0s
        General.Cluster.TLSHandshakeTimeShift = 0s
        General.Keepalive.ServerMinInterval = 1m0s
        General.Keepalive.ServerInterval = 2h0m0s
        General.Keepalive.ServerTimeout = 20s
        General.ConnectionTimeout = 0s
        General.GenesisMethod = ""
        General.GenesisFile = ""
        General.BootstrapMethod = "none"
        General.BootstrapFile = "/etc/hyperledger/fabric/genesisblock"
        General.Profile.Enabled = false
        General.Profile.Address = "0.0.0.0:6060"
        General.LocalMSPDir = "/var/hyperledger/orderer/msp"
        General.LocalMSPID = "OrdererMSP"
        General.BCCSP.Default = "SW"
        General.BCCSP.SW.Security = 256
        General.BCCSP.SW.Hash = "SHA2"
        General.BCCSP.SW.FileKeystore.KeyStorePath = ""
        General.Authentication.TimeWindow = 15m0s
        General.Authentication.NoExpirationChecks = false
        General.MaxRecvMsgSize = 104857600
        General.MaxSendMsgSize = 104857600
        FileLedger.Location = "/var/hyperledger/production/orderer"
        FileLedger.Prefix = ""
        Kafka.Retry.ShortInterval = 5s
        Kafka.Retry.ShortTotal = 10m0s
        Kafka.Retry.LongInterval = 5m0s
        Kafka.Retry.LongTotal = 12h0m0s
        Kafka.Retry.NetworkTimeouts.DialTimeout = 10s
        Kafka.Retry.NetworkTimeouts.ReadTimeout = 10s
        Kafka.Retry.NetworkTimeouts.WriteTimeout = 10s
        Kafka.Retry.Metadata.RetryMax = 3
        Kafka.Retry.Metadata.RetryBackoff = 250ms
        Kafka.Retry.Producer.RetryMax = 3
        Kafka.Retry.Producer.RetryBackoff = 100ms
        Kafka.Retry.Consumer.RetryBackoff = 2s
        Kafka.Verbose = false
        Kafka.Version = 0.10.2.0
        Kafka.TLS.Enabled = false
        Kafka.TLS.PrivateKey = ""
        Kafka.TLS.Certificate = ""
        Kafka.TLS.RootCAs = []
        Kafka.TLS.ClientAuthRequired = false
        Kafka.TLS.ClientRootCAs = []
        Kafka.TLS.TLSHandshakeTimeShift = 0s
        Kafka.SASLPlain.Enabled = false
        Kafka.SASLPlain.User = ""
        Kafka.SASLPlain.Password = ""
        Kafka.Topic.ReplicationFactor = 3
        Debug.BroadcastTraceDir = ""
        Debug.DeliverTraceDir = ""
        Consensus = map[SnapDir:/var/hyperledger/production/orderer/etcdraft/snapshot WALDir:/var/hyperledger/production/orderer/etcdraft/wal]
        Operations.ListenAddress = "orderer.example.com:9443"
        Operations.TLS.Enabled = false
        Operations.TLS.PrivateKey = ""
        Operations.TLS.Certificate = ""
        Operations.TLS.RootCAs = []
        Operations.TLS.ClientAuthRequired = false
        Operations.TLS.ClientRootCAs = []
        Operations.TLS.TLSHandshakeTimeShift = 0s
        Metrics.Provider = "prometheus"
        Metrics.Statsd.Network = "udp"
        Metrics.Statsd.Address = "127.0.0.1:8125"
        Metrics.Statsd.WriteInterval = 30s
        Metrics.Statsd.Prefix = ""
        ChannelParticipation.Enabled = true
        ChannelParticipation.MaxRequestBodySize = 1048576
        Admin.ListenAddress = "0.0.0.0:7053"
        Admin.TLS.Enabled = true
        Admin.TLS.PrivateKey = "/var/hyperledger/orderer/tls/server.key"
        Admin.TLS.Certificate = "/var/hyperledger/orderer/tls/server.crt"
        Admin.TLS.RootCAs = [/var/hyperledger/orderer/tls/ca.crt]
        Admin.TLS.ClientAuthRequired = true
        Admin.TLS.ClientRootCAs = [/var/hyperledger/orderer/tls/ca.crt]
        Admin.TLS.TLSHandshakeTimeShift = 0s
2023-08-03 05:41:43.224 UTC 0003 INFO [orderer.common.server] initializeServerConfig -> Starting orderer with TLS enabled
2023-08-03 05:41:43.290 UTC 0004 INFO [blkstorage] NewProvider -> Creating new file ledger directory at /var/hyperledger/production/orderer/chains
2023-08-03 05:41:43.297 UTC 0005 INFO [orderer.commmon.multichannel] InitJoinBlockFileRepo -> Channel Participation API enabled, registrar initializing with file repo /var/hyperledger/production/orderer/pendingops
2023-08-03 05:41:43.306 UTC 0006 INFO [orderer.common.server] Main -> Starting without a system channel
2023-08-03 05:41:43.307 UTC 0007 INFO [orderer.common.server] Main -> Setting up cluster
2023-08-03 05:41:43.307 UTC 0008 INFO [orderer.common.server] reuseListener -> Cluster listener is not configured, defaulting to use the general listener on port 7050
2023-08-03 05:41:43.319 UTC 0009 INFO [certmonitor] trackCertExpiration -> The enrollment certificate will expire on 2024-08-02 05:42:00 +0000 UTC
2023-08-03 05:41:43.320 UTC 000a INFO [certmonitor] trackCertExpiration -> The server TLS certificate will expire on 2024-08-02 05:42:00 +0000 UTC
2023-08-03 05:41:43.321 UTC 000b INFO [certmonitor] trackCertExpiration -> The client TLS certificate will expire on 2024-08-02 05:42:00 +0000 UTC
2023-08-03 05:41:43.322 UTC 000c INFO [orderer.commmon.multichannel] InitJoinBlockFileRepo -> Channel Participation API enabled, registrar initializing with file repo /var/hyperledger/production/orderer/pendingops
2023-08-03 05:41:43.329 UTC 000d INFO [orderer.commmon.multichannel] startChannels -> Registrar initializing without a system channel, number of application channels: 0, with 0 consensus.Chain(s) and 0 follower.Chain(s)
2023-08-03 05:41:43.342 UTC 000e INFO [orderer.common.server] Main -> Starting orderer:
 Version: 2.4.0
 Commit SHA: 41b6586
 Go version: go1.16.7
 OS/Arch: linux/amd64
2023-08-03 05:41:43.345 UTC 000f INFO [orderer.common.server] Main -> Beginning to serve requests
2023-08-03 05:41:45.961 UTC 0010 INFO [blkstorage] newBlockfileMgr -> Getting block information from block storage
2023-08-03 05:41:46.006 UTC 0011 INFO [orderer.consensus.etcdraft] HandleChain -> EvictionSuspicion not set, defaulting to 10m0s
2023-08-03 05:41:46.007 UTC 0012 INFO [orderer.consensus.etcdraft] HandleChain -> Without system channel: after eviction Registrar.SwitchToFollower will be called
2023-08-03 05:41:46.008 UTC 0013 INFO [orderer.consensus.etcdraft] createOrReadWAL -> No WAL data found, creating new WAL at path '/var/hyperledger/production/orderer/etcdraft/wal/mychannel' channel=mychannel node=1
2023-08-03 05:41:46.030 UTC 0014 INFO [orderer.commmon.multichannel] createAsMember -> Joining channel: {mychannel  consenter active 1}
2023-08-03 05:41:46.031 UTC 0015 INFO [orderer.consensus.etcdraft] Start -> Starting Raft node channel=mychannel node=1
2023-08-03 05:41:46.032 UTC 0016 INFO [orderer.common.cluster] Configure -> Entering, channel: mychannel, nodes: []
2023-08-03 05:41:46.033 UTC 0017 INFO [orderer.common.cluster] Configure -> Exiting
2023-08-03 05:41:46.033 UTC 0018 INFO [orderer.consensus.etcdraft] start -> Starting raft node as part of a new channel channel=mychannel node=1
2023-08-03 05:41:46.034 UTC 0019 INFO [orderer.consensus.etcdraft] becomeFollower -> 1 became follower at term 0 channel=mychannel node=1
2023-08-03 05:41:46.034 UTC 001a INFO [orderer.consensus.etcdraft] newRaft -> newRaft 1 [peers: [], term: 0, commit: 0, applied: 0, lastindex: 0, lastterm: 0] channel=mychannel node=1
2023-08-03 05:41:46.035 UTC 001b INFO [orderer.consensus.etcdraft] becomeFollower -> 1 became follower at term 1 channel=mychannel node=1
2023-08-03 05:41:46.036 UTC 001c INFO [orderer.consensus.etcdraft] run -> This node is picked to start campaign channel=mychannel node=1
2023-08-03 05:41:46.044 UTC 001d INFO [orderer.consensus.etcdraft] apply -> Applied config change to add node 1, current nodes in channel: [1] channel=mychannel node=1
2023-08-03 05:41:47.038 UTC 001e INFO [orderer.consensus.etcdraft] Step -> 1 is starting a new election at term 1 channel=mychannel node=1
2023-08-03 05:41:47.039 UTC 001f INFO [orderer.consensus.etcdraft] becomePreCandidate -> 1 became pre-candidate at term 1 channel=mychannel node=1
2023-08-03 05:41:47.039 UTC 0020 INFO [orderer.consensus.etcdraft] poll -> 1 received MsgPreVoteResp from 1 at term 1 channel=mychannel node=1
2023-08-03 05:41:47.040 UTC 0021 INFO [orderer.consensus.etcdraft] becomeCandidate -> 1 became candidate at term 2 channel=mychannel node=1
2023-08-03 05:41:47.040 UTC 0022 INFO [orderer.consensus.etcdraft] poll -> 1 received MsgVoteResp from 1 at term 2 channel=mychannel node=1
2023-08-03 05:41:47.040 UTC 0023 INFO [orderer.consensus.etcdraft] becomeLeader -> 1 became leader at term 2 channel=mychannel node=1
2023-08-03 05:41:47.040 UTC 0024 INFO [orderer.consensus.etcdraft] run -> raft.node: 1 elected leader 1 at term 2 channel=mychannel node=1
2023-08-03 05:41:47.042 UTC 0025 INFO [orderer.consensus.etcdraft] run -> Leader 1 is present, quit campaign channel=mychannel node=1
2023-08-03 05:41:47.042 UTC 0026 INFO [orderer.consensus.etcdraft] run -> Raft leader changed: 0 -> 1 channel=mychannel node=1
2023-08-03 05:41:47.043 UTC 0027 INFO [orderer.consensus.etcdraft] run -> Start accepting requests as Raft leader at block [0] channel=mychannel node=1
2023-08-03 05:41:53.864 UTC 0028 WARN [common.deliver] Handle -> Error reading from 172.19.0.8:39266: rpc error: code = Canceled desc = context canceled
2023-08-03 05:41:53.865 UTC 0029 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Deliver grpc.peer_address=172.19.0.8:39266 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=69.845583ms
2023-08-03 05:41:56.398 UTC 002a INFO [orderer.consensus.etcdraft] propose -> Created block [1], there are 0 blocks in flight channel=mychannel node=1
2023-08-03 05:41:56.398 UTC 002b INFO [orderer.consensus.etcdraft] run -> Received config transaction, pause accepting transaction till it is committed channel=mychannel node=1
2023-08-03 05:41:56.403 UTC 002c INFO [orderer.consensus.etcdraft] writeBlock -> Writing block [1] (Raft index: 3) to ledger channel=mychannel node=1
2023-08-03 05:41:56.414 UTC 002d WARN [orderer.common.broadcast] Handle -> Error reading from 172.19.0.8:39282: rpc error: code = Canceled desc = context canceled
2023-08-03 05:41:56.414 UTC 002e INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Broadcast grpc.peer_address=172.19.0.8:39282 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=69.819542ms
2023-08-03 05:41:57.384 UTC 002f WARN [common.deliver] Handle -> Error reading from 172.19.0.8:47452: rpc error: code = Canceled desc = context canceled
2023-08-03 05:41:57.384 UTC 0030 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Deliver grpc.peer_address=172.19.0.8:47452 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=57.557583ms
2023-08-03 05:41:59.971 UTC 0031 INFO [orderer.consensus.etcdraft] propose -> Created block [2], there are 0 blocks in flight channel=mychannel node=1
2023-08-03 05:41:59.971 UTC 0032 INFO [orderer.consensus.etcdraft] run -> Received config transaction, pause accepting transaction till it is committed channel=mychannel node=1
2023-08-03 05:41:59.976 UTC 0033 INFO [orderer.consensus.etcdraft] writeBlock -> Writing block [2] (Raft index: 4) to ledger channel=mychannel node=1
2023-08-03 05:41:59.986 UTC 0034 WARN [orderer.common.broadcast] Handle -> Error reading from 172.19.0.8:47468: rpc error: code = Canceled desc = context canceled
2023-08-03 05:41:59.986 UTC 0035 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Broadcast grpc.peer_address=172.19.0.8:47468 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=65.02375ms
2023-08-03 05:44:25.387 UTC 0036 INFO [orderer.consensus.etcdraft] propose -> Created block [3], there are 0 blocks in flight channel=mychannel node=1
2023-08-03 05:44:25.397 UTC 0037 INFO [orderer.consensus.etcdraft] writeBlock -> Writing block [3] (Raft index: 5) to ledger channel=mychannel node=1
2023-08-03 05:44:25.494 UTC 0038 WARN [orderer.common.broadcast] Handle -> Error reading from 172.19.0.1:54430: rpc error: code = Canceled desc = context canceled
2023-08-03 05:44:25.494 UTC 0039 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Broadcast grpc.peer_address=172.19.0.1:54430 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=2.185944209s
2023-08-03 05:44:33.977 UTC 003a INFO [orderer.consensus.etcdraft] propose -> Created block [4], there are 0 blocks in flight channel=mychannel node=1
2023-08-03 05:44:33.986 UTC 003b INFO [orderer.consensus.etcdraft] writeBlock -> Writing block [4] (Raft index: 6) to ledger channel=mychannel node=1
2023-08-03 05:44:34.055 UTC 003c WARN [orderer.common.broadcast] Handle -> Error reading from 172.19.0.1:57874: rpc error: code = Canceled desc = context canceled
2023-08-03 05:44:34.055 UTC 003d INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Broadcast grpc.peer_address=172.19.0.1:57874 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=2.12416021s
2023-08-03 05:44:42.541 UTC 003e INFO [orderer.consensus.etcdraft] propose -> Created block [5], there are 0 blocks in flight channel=mychannel node=1
2023-08-03 05:44:42.551 UTC 003f INFO [orderer.consensus.etcdraft] writeBlock -> Writing block [5] (Raft index: 7) to ledger channel=mychannel node=1
2023-08-03 05:44:44.035 UTC 0040 WARN [orderer.common.broadcast] Handle -> Error reading from 172.19.0.1:51280: rpc error: code = Canceled desc = context canceled
2023-08-03 05:44:44.035 UTC 0041 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Broadcast grpc.peer_address=172.19.0.1:51280 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=3.546100127s
2023-08-03 05:45:36.161 UTC 0042 WARN [orderer.common.broadcast] Handle -> Error reading from 172.19.0.7:56570: rpc error: code = Canceled desc = context canceled
2023-08-03 05:45:36.162 UTC 0043 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Broadcast grpc.request_deadline=2023-08-03T05:45:41.121Z grpc.peer_address=172.19.0.7:56570 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=21.635333ms
2023-08-03 05:45:38.163 UTC 0044 INFO [orderer.consensus.etcdraft] propose -> Created block [6], there are 0 blocks in flight channel=mychannel node=1
2023-08-03 05:45:38.175 UTC 0045 INFO [orderer.consensus.etcdraft] writeBlock -> Writing block [6] (Raft index: 8) to ledger channel=mychannel node=1
2023-08-03 05:45:38.324 UTC 0046 WARN [orderer.common.broadcast] Handle -> Error reading from 172.19.0.7:56570: rpc error: code = Canceled desc = context canceled
2023-08-03 05:45:38.324 UTC 0047 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Broadcast grpc.request_deadline=2023-08-03T05:45:43.314Z grpc.peer_address=172.19.0.7:56570 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=8.183625ms
2023-08-03 05:45:40.325 UTC 0048 INFO [orderer.consensus.etcdraft] propose -> Created block [7], there are 0 blocks in flight channel=mychannel node=1
2023-08-03 05:45:40.335 UTC 0049 INFO [orderer.consensus.etcdraft] writeBlock -> Writing block [7] (Raft index: 9) to ledger channel=mychannel node=1
2023-08-03 05:45:40.468 UTC 004a WARN [orderer.common.broadcast] Handle -> Error reading from 172.19.0.7:56570: rpc error: code = Canceled desc = context canceled
2023-08-03 05:45:40.468 UTC 004b INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=orderer.AtomicBroadcast grpc.method=Broadcast grpc.request_deadline=2023-08-03T05:45:45.459Z grpc.peer_address=172.19.0.7:56570 error="rpc error: code = Canceled desc = context canceled" grpc.code=Canceled grpc.call_duration=8.395667ms
2023-08-03 05:45:42.470 UTC 004c INFO [orderer.consensus.etcdraft] propose -> Created block [8], there are 0 blocks in flight channel=mychannel node=1
2023-08-03 05:45:42.481 UTC 004d INFO [orderer.consensus.etcdraft] writeBlock -> Writing block [8] (Raft index: 10) to ledger channel=mychannel node=1