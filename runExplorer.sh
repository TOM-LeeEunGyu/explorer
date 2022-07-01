sudo rm -rf ./organizations
sudo cp -r ../organizations .

KEY=$(sudo ls ./organizations/peerOrganizations/org1.themedium.io/users/Admin@org1.themedium.io/msp/keystore/)


cp -f ./connection-profile/test-network.json.template ./connection-profile/test-network.json
sed -i "s/{{ADMINKEYSTORE}}/$KEY/g" ./connection-profile/test-network.json

docker-compose up -d
