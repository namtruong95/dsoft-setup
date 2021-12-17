#!/bin/bash

readonly CERT_URL=https://raw.githubusercontent.com/namtruong95/dsoft-setup/main/certificates/dsoft.dev.crt
readonly CERT_PATH=/tmp/dsoft.dev.crt

curl $CERT_URL --output $CERT_PATH

security add-trusted-cert -r trustAsRoot -p basic -p ssl -d -k /Library/Keychains/System.keychain $CERT_PATH

readonly HOST_PATH=/etc/hosts

echo "
192.168.1.108 dsoft.dev
192.168.1.108 minio.dsoft.dev
192.168.1.108 audiobook.dsoft.dev
192.168.1.108 admin.audiobook.dsoft.dev
192.168.1.108 api.audiobook.dsoft.dev
192.168.1.108 sustech.dsoft.dev
192.168.1.108 api.sustech.dsoft.dev" >> $HOST_PATH
