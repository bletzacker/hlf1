#!/bin/bash

echo "export PATH=${PWD}/../bin:$PATH"
export PATH=${PWD}/../bin:$PATH
sleep 10
echo "export FABRIC_CFG_PATH=$PWD/../config/"
export FABRIC_CFG_PATH=$PWD/../config/
sleep 10
echo "source ./scripts/setPeerConnectionParam.sh 1 2"
source ./scripts/setPeerConnectionParam.sh 1 2
sleep 10
echo "source ./scripts/setOrgPeerContext.sh 1"
source ./scripts/setOrgPeerContext.sh 1
sleep 10
