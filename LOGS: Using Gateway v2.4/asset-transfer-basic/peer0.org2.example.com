2023-08-03 05:41:43.076 UTC 0001 INFO [nodeCmd] serve -> Starting peer:
 Version: 2.4.0
 Commit SHA: 41b6586
 Go version: go1.16.7
 OS/Arch: linux/amd64
 Chaincode:
  Base Docker Label: org.hyperledger.fabric
  Docker Namespace: hyperledger
2023-08-03 05:41:43.086 UTC 0002 INFO [peer] getLocalAddress -> Auto-detected peer address: 172.19.0.5:9051
2023-08-03 05:41:43.087 UTC 0003 INFO [peer] getLocalAddress -> Returning peer0.org2.example.com:9051
2023-08-03 05:41:43.139 UTC 0004 INFO [nodeCmd] initGrpcSemaphores -> concurrency limit for endorser service is 2500
2023-08-03 05:41:43.143 UTC 0005 INFO [nodeCmd] initGrpcSemaphores -> concurrency limit for deliver service is 2500
2023-08-03 05:41:43.144 UTC 0006 INFO [nodeCmd] serve -> Starting peer with TLS enabled
2023-08-03 05:41:43.218 UTC 0007 INFO [certmonitor] trackCertExpiration -> The enrollment certificate will expire on 2024-08-02 05:42:00 +0000 UTC
2023-08-03 05:41:43.219 UTC 0008 INFO [certmonitor] trackCertExpiration -> The server TLS certificate will expire on 2024-08-02 05:42:00 +0000 UTC
2023-08-03 05:41:43.236 UTC 0009 INFO [ledgermgmt] NewLedgerMgr -> Initializing LedgerMgr
2023-08-03 05:41:43.286 UTC 000a INFO [leveldbhelper] openDBAndCheckFormat -> DB is empty Setting db format as 2.0
2023-08-03 05:41:43.287 UTC 000b INFO [blkstorage] NewProvider -> Creating new file ledger directory at /var/hyperledger/production/ledgersData/chains/chains
2023-08-03 05:41:43.312 UTC 000c INFO [leveldbhelper] openDBAndCheckFormat -> DB is empty Setting db format as 2.0
2023-08-03 05:41:43.341 UTC 000d INFO [leveldbhelper] openDBAndCheckFormat -> DB is empty Setting db format as 2.0
2023-08-03 05:41:43.347 UTC 000e INFO [ledgermgmt] NewLedgerMgr -> Initialized LedgerMgr
2023-08-03 05:41:43.362 UTC 000f INFO [gossip.service] New -> Initialize gossip with endpoint peer0.org2.example.com:9051
2023-08-03 05:41:43.378 UTC 0010 INFO [gossip.gossip] New -> Creating gossip service with self membership of Endpoint: peer0.org2.example.com:9051, InternalEndpoint: peer0.org2.example.com:9051, PKI-ID: f4b4edb0cd29274af5ec1715c4f9718a2105a9aa31d24a28e3338a6cab024b8f, Metadata: 
2023-08-03 05:41:43.381 UTC 0011 INFO [lifecycle] InitializeLocalChaincodes -> Initialized lifecycle cache with 0 already installed chaincodes
2023-08-03 05:41:43.384 UTC 0012 INFO [gossip.gossip] start -> Gossip instance peer0.org2.example.com:9051 started
2023-08-03 05:41:43.387 UTC 0013 INFO [nodeCmd] computeChaincodeEndpoint -> Entering computeChaincodeEndpoint with peerHostname: peer0.org2.example.com
2023-08-03 05:41:43.388 UTC 0014 INFO [nodeCmd] computeChaincodeEndpoint -> Exit with ccEndpoint: peer0.org2.example.com:9052
2023-08-03 05:41:43.415 UTC 0015 INFO [sccapi] DeploySysCC -> deploying system chaincode 'lscc'
2023-08-03 05:41:43.421 UTC 0016 INFO [sccapi] DeploySysCC -> deploying system chaincode 'cscc'
2023-08-03 05:41:43.422 UTC 0017 INFO [sccapi] DeploySysCC -> deploying system chaincode 'qscc'
2023-08-03 05:41:43.422 UTC 0018 INFO [sccapi] DeploySysCC -> deploying system chaincode '_lifecycle'
2023-08-03 05:41:43.422 UTC 0019 INFO [nodeCmd] serve -> Deployed system chaincodes
2023-08-03 05:41:43.429 UTC 001a INFO [discovery] NewService -> Created with config TLS: true, authCacheMaxSize: 1000, authCachePurgeRatio: 0.750000
2023-08-03 05:41:43.429 UTC 001b INFO [nodeCmd] serve -> Discovery service activated
2023-08-03 05:41:43.429 UTC 001c INFO [nodeCmd] serve -> Starting peer with Gateway enabled
2023-08-03 05:41:43.430 UTC 001d INFO [nodeCmd] serve -> Starting peer with ID=[peer0.org2.example.com], network ID=[dev], address=[peer0.org2.example.com:9051]
2023-08-03 05:41:43.434 UTC 001e INFO [nodeCmd] serve -> Started peer with ID=[peer0.org2.example.com], network ID=[dev], address=[peer0.org2.example.com:9051]
2023-08-03 05:41:43.435 UTC 001f INFO [kvledger] LoadPreResetHeight -> Loading prereset height from path [/var/hyperledger/production/ledgersData/chains]
2023-08-03 05:41:43.435 UTC 0020 INFO [blkstorage] preResetHtFiles -> No active channels passed
2023-08-03 05:41:52.657 UTC 0021 INFO [ledgermgmt] CreateLedger -> Creating ledger [mychannel] with genesis block
2023-08-03 05:41:52.661 UTC 0022 INFO [blkstorage] newBlockfileMgr -> Getting block information from block storage
2023-08-03 05:41:52.691 UTC 0023 INFO [kvledger] commit -> [mychannel] Committed block [0] with 1 transaction(s) in 17ms (state_validation=5ms block_and_pvtdata_commit=7ms state_commit=3ms) commitHash=[]
2023-08-03 05:41:52.692 UTC 0024 INFO [kvledger] updateLedgerStatus -> Updating ledger [mychannel] status to [ACTIVE]
2023-08-03 05:41:52.693 UTC 0025 INFO [ledgermgmt] CreateLedger -> Created ledger [mychannel] with genesis block
2023-08-03 05:41:52.707 UTC 0026 ERRO [gateway] configUpdate -> Failed update orderer config channel=mychannel err="failed to get config for channel [mychannel]: could not get last config for channel mychannel"
2023-08-03 05:41:52.709 UTC 0027 WARN [peer.orderers] Update -> Config defines both orderer org specific endpoints and global endpoints, global endpoints will be ignored channel=mychannel
2023-08-03 05:41:52.713 UTC 0028 INFO [gossip.gossip] JoinChan -> Joining gossip network of channel mychannel with 2 organizations
2023-08-03 05:41:52.714 UTC 0029 INFO [gossip.gossip] learnAnchorPeers -> No configured anchor peers of Org1MSP for channel mychannel to learn about
2023-08-03 05:41:52.714 UTC 002a INFO [gossip.gossip] learnAnchorPeers -> No configured anchor peers of Org2MSP for channel mychannel to learn about
2023-08-03 05:41:52.721 UTC 002b INFO [gossip.state] NewGossipStateProvider -> Updating metadata information for channel mychannel, current ledger sequence is at = 0, next expected block is = 1
2023-08-03 05:41:52.722 UTC 002c INFO [deliveryClient] StartDeliverForChannel -> This peer will retrieve blocks from ordering service and disseminate to other peers in the organization for channel mychannel
2023-08-03 05:41:52.731 UTC 002d INFO [endorser] callChaincode -> finished chaincode: cscc duration: 97ms channel= txID=956a8d8d
2023-08-03 05:41:52.734 UTC 002e INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.peer_address=172.19.0.1:44392 grpc.code=OK grpc.call_duration=115.525125ms
2023-08-03 05:41:56.463 UTC 002f INFO [gossip.privdata] StoreBlock -> Received block [1] from buffer channel=mychannel
2023-08-03 05:41:56.498 UTC 0030 WARN [peer.orderers] Update -> Config defines both orderer org specific endpoints and global endpoints, global endpoints will be ignored channel=mychannel
2023-08-03 05:41:56.500 UTC 0031 INFO [gossip.gossip] JoinChan -> Joining gossip network of channel mychannel with 2 organizations
2023-08-03 05:41:56.500 UTC 0032 INFO [gossip.gossip] learnAnchorPeers -> Learning about the configured anchor peers of Org1MSP for channel mychannel: [{peer0.org1.example.com 7051}]
2023-08-03 05:41:56.501 UTC 0033 INFO [gossip.gossip] learnAnchorPeers -> No configured anchor peers of Org2MSP for channel mychannel to learn about
2023-08-03 05:41:56.504 UTC 0034 INFO [committer.txvalidator] Validate -> [mychannel] Validated block [1] in 39ms
2023-08-03 05:41:56.517 UTC 0035 INFO [kvledger] commit -> [mychannel] Committed block [1] with 1 transaction(s) in 10ms (state_validation=0ms block_and_pvtdata_commit=6ms state_commit=2ms) commitHash=[47dc540c94ceb704a23875c11273e16bb0b8a87aed84de911f2133568115f254]
2023-08-03 05:41:57.714 UTC 0036 INFO [gossip.channel] reportMembershipChanges -> [[mychannel] Membership view has changed. peers went online:  [[peer0.org1.example.com:7051 ]] , current view:  [[peer0.org1.example.com:7051 ]]]
2023-08-03 05:42:00.025 UTC 0037 INFO [gossip.privdata] StoreBlock -> Received block [2] from buffer channel=mychannel
2023-08-03 05:42:00.052 UTC 0038 WARN [peer.orderers] Update -> Config defines both orderer org specific endpoints and global endpoints, global endpoints will be ignored channel=mychannel
2023-08-03 05:42:00.055 UTC 0039 INFO [gossip.gossip] JoinChan -> Joining gossip network of channel mychannel with 2 organizations
2023-08-03 05:42:00.055 UTC 003a INFO [gossip.gossip] learnAnchorPeers -> Learning about the configured anchor peers of Org2MSP for channel mychannel: [{peer0.org2.example.com 9051}]
2023-08-03 05:42:00.055 UTC 003b INFO [gossip.gossip] learnAnchorPeers -> Anchor peer for channel mychannel with same endpoint, skipping connecting to myself
2023-08-03 05:42:00.055 UTC 003c INFO [gossip.gossip] learnAnchorPeers -> Learning about the configured anchor peers of Org1MSP for channel mychannel: [{peer0.org1.example.com 7051}]
2023-08-03 05:42:00.059 UTC 003d INFO [committer.txvalidator] Validate -> [mychannel] Validated block [2] in 34ms
2023-08-03 05:42:00.068 UTC 003e INFO [kvledger] commit -> [mychannel] Committed block [2] with 1 transaction(s) in 7ms (state_validation=0ms block_and_pvtdata_commit=4ms state_commit=1ms) commitHash=[5f88b61407b149a48413433f4670c46531e5c4a8febdc339a9536ff8716a559e]
2023-08-03 05:42:00.089 UTC 003f INFO [comm.grpc.server] 1 -> unary call completed grpc.service=gossip.Gossip grpc.method=Ping grpc.request_deadline=2023-08-03T05:42:02.086Z grpc.peer_address=172.19.0.7:37048 grpc.peer_subject="CN=peer0,OU=peer,O=Hyperledger,ST=North Carolina,C=US" grpc.code=OK grpc.call_duration=2.127708ms
2023-08-03 05:42:00.101 UTC 0040 INFO [gossip.comm] GossipStream -> Peer a76adefb9334190e80d7e799395a6d8d041480b24dad8742f89b741329e0a16c (172.19.0.7:37048) probed us
2023-08-03 05:42:00.101 UTC 0041 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=gossip.Gossip grpc.method=GossipStream grpc.request_deadline=2023-08-03T05:42:10.093Z grpc.peer_address=172.19.0.7:37048 grpc.peer_subject="CN=peer0,OU=peer,O=Hyperledger,ST=North Carolina,C=US" grpc.code=OK grpc.call_duration=6.738125ms
2023-08-03 05:43:18.899 UTC 0042 INFO [endorser] callChaincode -> finished chaincode: _lifecycle duration: 5ms channel= txID=d6903ec1
2023-08-03 05:43:18.900 UTC 0043 INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.peer_address=172.19.0.1:51056 grpc.code=OK grpc.call_duration=10.149708ms
2023-08-03 05:44:23.070 UTC 0044 INFO [lifecycle] InstallChaincode -> Successfully installed chaincode with package ID 'basic_1.0:d29562b85321d821cc02fddff4366e54b9bdbfa5d51647b5613141dd4d947b9e'
2023-08-03 05:44:23.071 UTC 0045 INFO [endorser] callChaincode -> finished chaincode: _lifecycle duration: 63761ms channel= txID=ebb103de
2023-08-03 05:44:23.072 UTC 0046 INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.peer_address=172.19.0.1:51074 grpc.code=OK grpc.call_duration=1m3.895283571s
2023-08-03 05:44:25.433 UTC 0047 INFO [gossip.privdata] StoreBlock -> Received block [3] from buffer channel=mychannel
2023-08-03 05:44:25.464 UTC 0048 INFO [committer.txvalidator] Validate -> [mychannel] Validated block [3] in 30ms
2023-08-03 05:44:25.485 UTC 0049 INFO [kvledger] commit -> [mychannel] Committed block [3] with 1 transaction(s) in 14ms (state_validation=5ms block_and_pvtdata_commit=5ms state_commit=2ms) commitHash=[dce8df81a0a6045edc3e4f472d2c7c1d6b241e5918ac1eed1e2993d725e16f3d]
2023-08-03 05:44:31.814 UTC 004a INFO [lifecycle] CheckCommitReadiness -> Successfully checked commit readiness of chaincode name 'basic' on channel 'mychannel' with definition {sequence: 1, endorsement info: (version: '1.0', plugin: 'escc', init required: false), validation info: (plugin: 'vscc', policy: '12202f4368616e6e656c2f4170706c69636174696f6e2f456e646f7273656d656e74'), collections: (<nil>)}
2023-08-03 05:44:31.815 UTC 004b INFO [endorser] callChaincode -> finished chaincode: _lifecycle duration: 20ms channel=mychannel txID=64730ff0
2023-08-03 05:44:31.820 UTC 004c INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.peer_address=172.19.0.1:45906 grpc.code=OK grpc.call_duration=35.2815ms
2023-08-03 05:44:31.944 UTC 004d INFO [lifecycle] ApproveChaincodeDefinitionForOrg -> Successfully endorsed chaincode approval with name 'basic', package ID 'basic_1.0:d29562b85321d821cc02fddff4366e54b9bdbfa5d51647b5613141dd4d947b9e', on channel 'mychannel' with definition {sequence: 1, endorsement info: (version: '1.0', plugin: 'escc', init required: false), validation info: (plugin: 'vscc', policy: '12202f4368616e6e656c2f4170706c69636174696f6e2f456e646f7273656d656e74'), collections: ()}
2023-08-03 05:44:31.944 UTC 004e INFO [endorser] callChaincode -> finished chaincode: _lifecycle duration: 9ms channel=mychannel txID=95adc082
2023-08-03 05:44:31.955 UTC 004f INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.peer_address=172.19.0.1:45924 grpc.code=OK grpc.call_duration=22.694834ms
2023-08-03 05:44:34.009 UTC 0050 INFO [gossip.privdata] StoreBlock -> Received block [4] from buffer channel=mychannel
2023-08-03 05:44:34.029 UTC 0051 INFO [committer.txvalidator] Validate -> [mychannel] Validated block [4] in 18ms
2023-08-03 05:44:34.035 UTC 0052 INFO [gossip.privdata] RetrievePvtdata -> Successfully fetched all 1 eligible collection private write sets for block [4] (0 from local cache, 1 from transient store, 0 from other peers) channel=mychannel
2023-08-03 05:44:34.048 UTC 0053 INFO [kvledger] commit -> [mychannel] Committed block [4] with 1 transaction(s) in 11ms (state_validation=4ms block_and_pvtdata_commit=4ms state_commit=2ms) commitHash=[94548c30c63351f71219dfe2efc1b96170895a7e6dda75066928ae84e878ffcf]
2023-08-03 05:44:34.057 UTC 0054 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=protos.Deliver grpc.method=DeliverFiltered grpc.request_deadline=2023-08-03T05:45:01.958Z grpc.peer_address=172.19.0.1:45930 error="context finished before block retrieved: context canceled" grpc.code=Unknown grpc.call_duration=2.098819251s
2023-08-03 05:44:40.356 UTC 0055 INFO [lifecycle] CheckCommitReadiness -> Successfully checked commit readiness of chaincode name 'basic' on channel 'mychannel' with definition {sequence: 1, endorsement info: (version: '1.0', plugin: 'escc', init required: false), validation info: (plugin: 'vscc', policy: '12202f4368616e6e656c2f4170706c69636174696f6e2f456e646f7273656d656e74'), collections: (<nil>)}
2023-08-03 05:44:40.356 UTC 0056 INFO [endorser] callChaincode -> finished chaincode: _lifecycle duration: 6ms channel=mychannel txID=3381df1c
2023-08-03 05:44:40.357 UTC 0057 INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.peer_address=172.19.0.1:52824 grpc.code=OK grpc.call_duration=11.66075ms
2023-08-03 05:44:40.521 UTC 0058 INFO [lifecycle] CheckCommitReadiness -> Successfully checked commit readiness of chaincode name 'basic' on channel 'mychannel' with definition {sequence: 1, endorsement info: (version: '1.0', plugin: 'escc', init required: false), validation info: (plugin: 'vscc', policy: '12202f4368616e6e656c2f4170706c69636174696f6e2f456e646f7273656d656e74'), collections: (<nil>)}
2023-08-03 05:44:40.523 UTC 0059 INFO [lifecycle] CommitChaincodeDefinition -> Successfully endorsed commit for chaincode name 'basic' on channel 'mychannel' with definition {sequence: 1, endorsement info: (version: '1.0', plugin: 'escc', init required: false), validation info: (plugin: 'vscc', policy: '12202f4368616e6e656c2f4170706c69636174696f6e2f456e646f7273656d656e74'), collections: (<nil>)}
2023-08-03 05:44:40.523 UTC 005a INFO [endorser] callChaincode -> finished chaincode: _lifecycle duration: 8ms channel=mychannel txID=50e74d59
2023-08-03 05:44:40.525 UTC 005b INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.peer_address=172.19.0.1:52850 grpc.code=OK grpc.call_duration=13.154417ms
2023-08-03 05:44:42.572 UTC 005c INFO [gossip.privdata] StoreBlock -> Received block [5] from buffer channel=mychannel
2023-08-03 05:44:42.590 UTC 005d INFO [committer.txvalidator] Validate -> [mychannel] Validated block [5] in 17ms
2023-08-03 05:44:42.594 UTC 005e INFO [lifecycle] update -> Updating cached definition for chaincode 'basic' on channel 'mychannel'
2023-08-03 05:44:42.598 UTC 005f INFO [lifecycle] update -> Chaincode with package ID 'basic_1.0:d29562b85321d821cc02fddff4366e54b9bdbfa5d51647b5613141dd4d947b9e' now available on channel mychannel for chaincode definition basic:1.0
2023-08-03 05:44:43.938 UTC 0060 INFO [cceventmgmt] HandleStateUpdates -> Channel [mychannel]: Handling deploy or update of chaincode [basic]
2023-08-03 05:44:43.947 UTC 0061 INFO [kvledger] commit -> [mychannel] Committed block [5] with 1 transaction(s) in 1355ms (state_validation=1347ms block_and_pvtdata_commit=5ms state_commit=1ms) commitHash=[a59d8bf077499ad30872b03aa13661aad8f72f9f71da403461d800e1274e6d35]
2023-08-03 05:44:44.036 UTC 0062 INFO [comm.grpc.server] 1 -> streaming call completed grpc.service=protos.Deliver grpc.method=DeliverFiltered grpc.request_deadline=2023-08-03T05:45:10.527Z grpc.peer_address=172.19.0.1:52858 error="context finished before block retrieved: context canceled" grpc.code=Unknown grpc.call_duration=3.509282502s
2023-08-03 05:44:50.401 UTC 0063 INFO [lifecycle] QueryChaincodeDefinition -> Successfully queried chaincode name 'basic' with definition {sequence: 1, endorsement info: (version: '1.0', plugin: 'escc', init required: false), validation info: (plugin: 'vscc', policy: '12202f4368616e6e656c2f4170706c69636174696f6e2f456e646f7273656d656e74'), collections: ()},
2023-08-03 05:44:50.407 UTC 0064 INFO [endorser] callChaincode -> finished chaincode: _lifecycle duration: 15ms channel=mychannel txID=09514baa
2023-08-03 05:44:50.410 UTC 0065 INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.peer_address=172.19.0.1:57302 grpc.code=OK grpc.call_duration=23.581791ms
2023-08-03 05:45:36.109 UTC 0066 INFO [endorser] callChaincode -> finished chaincode: basic duration: 40ms channel=mychannel txID=c7d869c6
2023-08-03 05:45:36.112 UTC 0067 INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.request_deadline=2023-08-03T05:45:50.892Z grpc.peer_address=172.19.0.7:48322 grpc.code=OK grpc.call_duration=69.418791ms
2023-08-03 05:45:38.198 UTC 0068 INFO [gossip.privdata] StoreBlock -> Received block [6] from buffer channel=mychannel
2023-08-03 05:45:38.216 UTC 0069 INFO [committer.txvalidator] Validate -> [mychannel] Validated block [6] in 17ms
2023-08-03 05:45:38.227 UTC 006a INFO [kvledger] commit -> [mychannel] Committed block [6] with 1 transaction(s) in 10ms (state_validation=0ms block_and_pvtdata_commit=5ms state_commit=2ms) commitHash=[162d2d3249ae44997c77f9864c1eb5ed76392ae5fb55dca7424abb9d71f3605b]
2023-08-03 05:45:38.308 UTC 006b INFO [endorser] callChaincode -> finished chaincode: basic duration: 10ms channel=mychannel txID=3f2e26ef
2023-08-03 05:45:38.309 UTC 006c INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.request_deadline=2023-08-03T05:45:53.269Z grpc.peer_address=172.19.0.7:48322 grpc.code=OK grpc.call_duration=17.302916ms
2023-08-03 05:45:40.359 UTC 006d INFO [gossip.privdata] StoreBlock -> Received block [7] from buffer channel=mychannel
2023-08-03 05:45:40.375 UTC 006e INFO [committer.txvalidator] Validate -> [mychannel] Validated block [7] in 15ms
2023-08-03 05:45:40.385 UTC 006f INFO [kvledger] commit -> [mychannel] Committed block [7] with 1 transaction(s) in 9ms (state_validation=0ms block_and_pvtdata_commit=5ms state_commit=1ms) commitHash=[b94f0decdc452f3f01abad2eb97d68dbb27f58b10500d12533452554a33001cf]
2023-08-03 05:45:40.453 UTC 0070 INFO [endorser] callChaincode -> finished chaincode: basic duration: 17ms channel=mychannel txID=a216fa10
2023-08-03 05:45:40.454 UTC 0071 INFO [comm.grpc.server] 1 -> unary call completed grpc.service=protos.Endorser grpc.method=ProcessProposal grpc.request_deadline=2023-08-03T05:45:55.411Z grpc.peer_address=172.19.0.7:48322 grpc.code=OK grpc.call_duration=24.541917ms
2023-08-03 05:45:42.500 UTC 0072 INFO [gossip.privdata] StoreBlock -> Received block [8] from buffer channel=mychannel
2023-08-03 05:45:42.518 UTC 0073 INFO [committer.txvalidator] Validate -> [mychannel] Validated block [8] in 17ms
2023-08-03 05:45:42.528 UTC 0074 INFO [kvledger] commit -> [mychannel] Committed block [8] with 1 transaction(s) in 9ms (state_validation=0ms block_and_pvtdata_commit=5ms state_commit=1ms) commitHash=[a70f89c7f425996f0575c8752391b24e445c5a9435002852206c7907b56da99e]
