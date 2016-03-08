#!/bin/bash
if [ $#  -eq 0 ]; then
  echo "Usage: $0 <CERT_NAME>"
  echo "e.g. $0 example.com"
else
  openssl genrsa -des3 -passout pass:x -out $1.pass.key 2048
  openssl rsa -passin pass:x -in $1.pass.key -out $1.key
  rm $1.pass.key
  openssl req -new -key $1.key -out $1.csr
  openssl x509 -req -days 365 -in $1.csr -signkey $1.key -out $1.crt
fi