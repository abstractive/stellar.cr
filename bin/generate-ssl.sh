#!/bin/sh

mkdir -p config/development/ssl
openssl req  -nodes -new -x509 -keyout config/development/ssl/$1.pem -out config/development/ssl/$1.crt -days 999 -subj "/CN=$1.zero"
