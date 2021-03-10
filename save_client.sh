#!/bin/bash

# First argument: EasyRSA version
# Second argument: Client identifier

KEY_DIR=~/client-configs/keys/
RSA_DIR=~/EasyRSA-${1}/
VPN_DIR=/etc/openvpn/

cp /tmp/${2}.crt ${KEY_DIR}
cp ${RSA_DIR}/ta.key ${KEY_DIR}
sudo cp ${VPN_DIR}/ca.crt ${KEY_DIR}