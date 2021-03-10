#!/bin/bash

# First argument: EasyRSA version
# Second argument: Client identifier
# Third argument: Username of server
# Forth argument: IP Server

RSA_DIR=~/EasyRSA-${1}/

cd ${RSA_DIR};
./easyrsa import-req /tmp/${2}.req ${2};
./easyrsa sign-req client ${2};
scp pki/issued/${2}.crt ${3}@${4}:/tmp;