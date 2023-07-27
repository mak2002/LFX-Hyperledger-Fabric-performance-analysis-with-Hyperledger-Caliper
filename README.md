These are set of chaincodes which are used as a reference for One-stop-shop Hyperledger Fabric performance analysis with Hyperledger Caliper (2023) (Hyperledger Mentorship project) 

## Starting the network

### 1. Start the test network

```
// For asset-transfer-sbe chaincode:
./network.sh up createChannel

// For other chaincodes:
./network.sh up createChannel -c mychannel -ca
```

### 2. Deploy the chaincode
Commands for deploying each chaincode can be found here:

1. [asset-transfer-private-data](https://github.com/hyperledger/fabric-samples/tree/main/asset-transfer-private-data#running-the-sample)

2. [asset-transfer-basic](https://github.com/hyperledger/fabric-samples/tree/main/asset-transfer-basic#running-the-sample)

3. [asset-transfer-sbe](https://github.com/hyperledger/fabric-samples/tree/main/asset-transfer-sbe#deploy-the-smart-contract)

### 3. Submit the transactions

For asset-transfer-sbe chaincode, you can submit the transactions detailed [here](https://github.com/hyperledger/fabric-samples/tree/main/asset-transfer-sbe#run-the-transfer-scenario)

For other chaincodes, go to the sample application of choice then run the main file

For example:
```
cd asset-transfer-private-data
cd application-javascript

// install dependancies
npm install
node app.js
```

