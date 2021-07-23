#!/bin/bash

echo "go mod tidy"
go mod tidy
echo "go mod vendor"
go mod vendor
echo "go build"
go build
echo "../test-network"
cd ../test-network
echo "./network.sh down"
./network.sh down
echo "./network.sh up -s couchdb"
./network.sh up -s couchdb
echo "./network.sh createChannel"
./network.sh createChannel
echo "./network.sh deployCC -ccn spac -ccl go -ccp ../chaincode -cci InitLedger"
./network.sh deployCC -ccn spac -ccl go -ccp ../chaincode -cci InitLedger
