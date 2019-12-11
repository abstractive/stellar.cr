#!/bin/sh

openssl req  -nodes -new -x509 -keyout $1.pem -out $1.crt -days 999 -subj "/CN=$1.zero"
