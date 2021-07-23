To run the HLF1 Project:

In: hlf1/chaincode  
Run: ./deploy1.sh

In: hlf1/test-network  
Run:

export PATH=${PWD}/../bin:$PATH  
export FABRIC_CFG_PATH=$PWD/../config/  
source ./scripts/setPeerConnectionParam.sh 1 2  
source ./scripts/setOrgPeerContext.sh 1

Test a scenario:

./invoke.sh '{"function":"ReadHouse","Args":["1"]}'

./invoke.sh '{"function":"HouseExists","Args":["9"]}'  
./invoke.sh '{"function":"CreateHouse","Args":["9","Laurent","200000","HouseCreated"]}'  
./invoke.sh '{"function":"HouseExists","Args":["9"]}'  
./invoke.sh '{"function":"ReadHouse","Args":["9"]}'

./invoke.sh '{"function":"TransferHouse","Args":["9","Mathieu"]}'  
./invoke.sh '{"function":"ReadHouse","Args":["9"]}'

./invoke.sh '{"function":"QueryHousesByOwner","Args":["Laurent"]}'  
./invoke.sh '{"function":"QueryHouses","Args":["{\"selector\":{\"owner\":\"Mathieu\"}}"]}'  
./invoke.sh '{"function":"QueryHouses","Args":["{\"selector\":{\"price\":{\"$gt\":200000}}}"]}'  
./invoke.sh '{"function":"QueryTotalPriceByOwner","Args":["Laurent"]}'

./invoke.sh '{"function":"CreateEvent","Args":["9","Extension"]}'  
./invoke.sh '{"function":"GetHouseHistory","Args":["9"]}'

./invoke.sh '{"function":"DeleteHouse","Args":["9"]}'  
./invoke.sh '{"function":"GetHouseHistory","Args":["9"]}'
