#!/bin/bash

# First argument: EasyRSA version
# Second argument: Client identifier
# Third argument: Username of server
# Forth argument: IP Server

KEY_DIR=~/client-configs/keys/
RSA_DIR=~/EasyRSA-${1}/

cd ${RSA_DIR};
./easyrsa gen-req ${2} nopass;
cp pki/private/${2}.key ${KEY_DIR};
scp pki/reqs/${2}.req ${3}@${4}:/tmp;