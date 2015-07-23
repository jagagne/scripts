#! /bin/bash

echo "creating a new private/public key pair"
openssl genrsa -des3 -out server.key 4096
echo "key pair succesfully generated"

echo "create a certicate signing request (csr)"
openssl req -new -key server.key -out server.csr
echo "succesfully created the .csr file"

echo "create a self-signed certificate"
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
echo "succesfully created the .crt file"

