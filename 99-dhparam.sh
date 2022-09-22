#!/bin/bash

DH_FILE="dhparam.pem"

if [[ -f /etc/nginx/"$DH_FILE" ]]; then
	echo "$DH_FILE exists… nothing to do"
else
	echo "$DH_FILE is missing: generating"
	openssl dhparam -out /etc/nginx/"$DH_FILE" "$DHPARAM_SIZE"
fi