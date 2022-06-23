#!/usr/bin/env bash

#createclient
echo "########################################################"
echo "hermes -c hermes.toml tx raw create-client earth kepler22d"
echo "########################################################"
hermes -c hermes.toml tx raw create-client earth kepler22d
hermes -c hermes.toml query client state earth 10-grandpa-0
hermes -c hermes.toml query client consensus earth 10-grandpa-0
echo "########################################################"
echo "hermes -c hermes.toml tx raw create-client kepler22d earth"
echo "########################################################"
hermes -c hermes.toml tx raw create-client kepler22d earth
hermes -c hermes.toml query client state kepler22d  07-tendermint-0
hermes -c hermes.toml query client consensus kepler22d 07-tendermint-0
sleep 5

#updateclient
echo "########################################################"
echo "hermes -c hermes.toml tx raw update-client earth 10-grandpa-0"
echo "########################################################"
hermes -c hermes.toml tx raw update-client earth 10-grandpa-0
echo "########################################################"
echo "hermes -c hermes.toml query client state earth 10-grandpa-0"
echo "########################################################"
hermes -c hermes.toml query client state earth 10-grandpa-0
hermes -c hermes.toml query client consensus earth 10-grandpa-0
sleep 5
echo "########################################################"
echo "hermes -c hermes.toml tx raw update-client kepler22d  07-tendermint-0"
echo "########################################################" 
hermes -c hermes.toml tx raw update-client kepler22d  07-tendermint-0
echo "########################################################"
echo "hermes -c hermes.toml query client state kepler22d  07-tendermint-0"
echo "########################################################"
sleep 8
hermes -c hermes.toml query client state kepler22d  07-tendermint-0
hermes -c hermes.toml query client consensus kepler22d 07-tendermint-0

#connection
# echo "########################################################"
# echo "hermes -c hermes.toml tx raw conn-init earth kepler22d 10-grandpa-0 07-tendermint-0"
# echo "########################################################"
# hermes -c hermes.toml tx raw conn-init earth kepler22d 10-grandpa-0 07-tendermint-0
# sleep 5
echo "########################################################"
echo "hermes -c hermes.toml tx raw conn-init kepler22d earth  07-tendermint-0 10-grandpa-0 "
echo "########################################################"
hermes -c hermes.toml tx raw conn-init kepler22d earth 07-tendermint-0 10-grandpa-0
sleep 8

# echo "########################################################"
# echo "hermes -c hermes.toml tx raw conn-try kepler22d earth 07-tendermint-0 10-grandpa-0 -s connection-0"
# echo "########################################################"
# hermes -c hermes.toml tx raw conn-try kepler22d earth 07-tendermint-0 10-grandpa-0 -s connection-0
# sleep 8
echo "########################################################"
echo "hermes -c hermes.toml tx raw conn-try earth kepler22d 10-grandpa-0 07-tendermint-0 -s connection-0"
echo "########################################################"
hermes -c hermes.toml tx raw conn-try earth kepler22d 10-grandpa-0 07-tendermint-0 -s connection-0
sleep 5
# echo "########################################################"
# echo "hermes -c hermes.toml tx raw conn-ack earth kepler22d 10-grandpa-0 07-tendermint-0 -d connection-0 -s connection-0"
# echo "########################################################"
# hermes -c hermes.toml tx raw conn-ack earth kepler22d 10-grandpa-0 07-tendermint-0 -d connection-0 -s connection-0
# sleep 5
echo "########################################################"
echo "hermes -c hermes.toml tx raw conn-ack kepler22d earth 07-tendermint-0 10-grandpa-0 -d connection-0 -s connection-0"
echo "########################################################"
hermes -c hermes.toml tx raw conn-ack kepler22d earth 07-tendermint-0 10-grandpa-0 -d connection-0 -s connection-0
sleep 8

# echo "########################################################"
# echo "hermes -c hermes.toml tx raw conn-confirm kepler22d earth 07-tendermint-0 10-grandpa-0 -d connection-0 -s connection-0"
# echo "########################################################"
# hermes -c hermes.toml tx raw conn-confirm kepler22d earth 07-tendermint-0 10-grandpa-0 -d connection-0 -s connection-0
# sleep 8
echo "########################################################"
echo "hermes -c hermes.toml tx raw conn-confirm earth kepler22d 10-grandpa-0 07-tendermint-0 -d connection-0 -s connection-0"
echo "########################################################"
hermes -c hermes.toml tx raw conn-confirm earth kepler22d 10-grandpa-0 07-tendermint-0 -d connection-0 -s connection-0
sleep 5
echo "########################################################"
echo "hermes -c hermes.toml query connection end earth connection-0"
echo "########################################################"
hermes -c hermes.toml query connection end earth connection-0
sleep 5
echo "########################################################"
echo "hermes -c hermes.toml query connection end kepler22d connection-0"
echo "########################################################"
sleep 8
hermes -c hermes.toml query connection end kepler22d connection-0


#channle
# echo "########################################################"
# echo "hermes -c hermes.toml tx raw chan-open-init earth kepler22d connection-0 transfer transfer -o UNORDERED"
# echo "########################################################"
# hermes -c hermes.toml tx raw chan-open-init earth kepler22d connection-0 transfer transfer -o UNORDERED
# sleep 5
echo "########################################################"
echo "hermes -c hermes.toml tx raw chan-open-init kepler22d earth connection-0 transfer transfer -o UNORDERED"
echo "########################################################"
hermes -c hermes.toml tx raw chan-open-init kepler22d earth connection-0 transfer transfer -o UNORDERED
sleep 8

# echo "########################################################"
# echo "hermes -c hermes.toml tx raw chan-open-try kepler22d earth connection-0 transfer transfer -s channel-0"
# echo "########################################################"
# hermes -c hermes.toml tx raw chan-open-try kepler22d earth connection-0 transfer transfer -s channel-0
# sleep 8
echo "########################################################"
echo "hermes -c hermes.toml tx raw chan-open-try earth kepler22d connection-0 transfer transfer -s channel-0"
echo "########################################################"
hermes -c hermes.toml tx raw chan-open-try earth kepler22d connection-0 transfer transfer -s channel-0
sleep 5

# echo "########################################################"
# echo "hermes -c hermes.toml tx raw chan-open-ack earth kepler22d connection-0 transfer transfer -d channel-0 -s channel-0"
# echo "########################################################"
# hermes -c hermes.toml tx raw chan-open-ack earth kepler22d connection-0 transfer transfer -d channel-0 -s channel-0
# sleep 5
echo "########################################################"
echo "hermes -c hermes.toml tx raw chan-open-ack kepler22d earth connection-0 transfer transfer -d channel-0 -s channel-0"
echo "########################################################"
hermes -c hermes.toml tx raw chan-open-ack kepler22d earth connection-0 transfer transfer -d channel-0 -s channel-0
sleep 8

# echo "########################################################"
# echo "hermes -c hermes.toml tx raw chan-open-confirm kepler22d earth connection-0 transfer transfer -d channel-0 -s channel-0"
# echo "########################################################"
# hermes -c hermes.toml tx raw chan-open-confirm kepler22d earth connection-0 transfer transfer -d channel-0 -s channel-0
# sleep 8
echo "########################################################"
echo "hermes -c hermes.toml tx raw chan-open-confirm earth kepler22d connection-0 transfer transfer -d channel-0 -s channel-0"
echo "########################################################"
hermes -c hermes.toml tx raw chan-open-confirm earth kepler22d connection-0 transfer transfer -d channel-0 -s channel-0
sleep 5

echo "########################################################"
echo "hermes -c hermes.toml query channel end earth transfer channel-0"
echo "########################################################"
hermes -c hermes.toml query channel end earth transfer channel-0
sleep 5
echo "########################################################"
echo "hermes -c hermes.toml query channel end kepler22d transfer channel-0"
echo "########################################################"
sleep 8
hermes -c hermes.toml query channel end kepler22d transfer channel-0

echo "########################################################"
echo "hermes -c hermes.toml tx raw ft-transfer kepler22d earth transfer channel-0 10000 -o 9999 -n 1 -d ATOM"
echo "########################################################"
hermes -c hermes.toml tx raw ft-transfer kepler22d earth transfer channel-0 10000 -o 9999 -n 1 -d ATOM
sleep 5
echo "########################################################"
echo " hermes -c hermes.toml tx raw packet-recv kepler22d earth transfer channel-0"
echo "########################################################"
hermes -c hermes.toml tx raw packet-recv kepler22d earth transfer channel-0
sleep 8
echo "########################################################"
echo "hermes -c hermes.toml tx raw packet-ack earth kepler22d transfer channel-0"
echo "########################################################"
hermes -c hermes.toml tx raw packet-ack earth kepler22d transfer channel-0
sleep 5

echo "########################################################"
echo "hermes -c hermes.toml tx raw ft-transfer earth kepler22d transfer channel-0 10000 -o 9999 -n 1 -d ibc/04C1A8B4EC211C89630916F8424F16DC9611148A5F300C122464CE8E996AABD0"
echo "########################################################"
hermes -c hermes.toml tx raw ft-transfer earth kepler22d transfer channel-0 10000 -o 9999 -n 1 -d ibc/04C1A8B4EC211C89630916F8424F16DC9611148A5F300C122464CE8E996AABD0
sleep 8
echo "########################################################"
echo "  hermes -c hermes.toml tx raw packet-recv earth kepler22d transfer channel-0"
echo "########################################################"
 hermes -c hermes.toml tx raw packet-recv earth kepler22d transfer channel-0
sleep 5
echo "########################################################"
echo "hermes -c hermes.toml tx raw packet-ack kepler22d earth  transfer channel-0"
echo "########################################################"
hermes -c hermes.toml tx raw packet-ack kepler22d earth transfer channel-0
sleep 8

echo "########################################################"
echo "hermes -c hermes.toml tx raw ft-transfer earth kepler22d transfer channel-0 100000000000000000000 -o 9999 -n 1 -d OCT"
echo "########################################################"
hermes -c hermes.toml tx raw ft-transfer earth kepler22d transfer channel-0 100000000000000000000 -o 9999 -n 1 -d OCT
sleep 8
echo "########################################################"
echo "  hermes -c hermes.toml tx raw packet-recv earth kepler22d transfer channel-0"
echo "########################################################"
 hermes -c hermes.toml tx raw packet-recv earth kepler22d transfer channel-0
sleep 5
echo "########################################################"
echo "hermes -c hermes.toml tx raw packet-ack kepler22d earth transfer channel-0 "
echo "########################################################"
hermes -c hermes.toml tx raw packet-ack kepler22d earth transfer channel-0
sleep 8

# echo "########################################################"
# echo "hermes -c hermes.toml tx raw ft-transfer kepler22d earth transfer channel-0 100000000000000000000 -o 9999 -n 1 -d ibc/04C1A8B4EC211C89630916F8424F16DC9611148A5F300C122464CE8E996AABD0"
# echo "########################################################"
# hermes -c hermes.toml tx raw ft-transfer kepler22d earth transfer channel-0 100000000000000000000 -o 9999 -n 1 -d ibc/04C1A8B4EC211C89630916F8424F16DC9611148A5F300C122464CE8E996AABD0
# sleep 8
# echo "########################################################"
# echo " hermes -c hermes.toml tx raw packet-recv kepler22d earth transfer channel-0"
# echo "########################################################"
#  hermes -c hermes.toml tx raw packet-recv kepler22d earth transfer channel-0
# sleep 5
# echo "########################################################"
# echo "hermes -c hermes.toml tx raw packet-ack earth kepler22d transfer channel-0"
# echo "########################################################"
# hermes -c hermes.toml tx raw packet-ack earth kepler22d transfer channel-0
# sleep 8

# hermes -c hermes.toml tx raw chan-close-init earth kepler22d connection-0 transfer transfer -d channel-0 -s channel-0
# hermes -c hermes.toml tx raw chan-close-confirm kepler22d earth connection-0 transfer transfer -d channel-0 -s channel-0
