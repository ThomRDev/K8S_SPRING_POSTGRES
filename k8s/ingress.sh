#!/bin/bash
SERVER_IP=http://127.0.0.1
SERVER_NAME=api.bookmarker
# crea entrada en /etc/hosts
echo "$SERVER_IP $SERVER_NAME" | sudo tee -a /etc/hosts
# lo mostramos
cat /etc/hosts
curl --resolve "api.bookmarker:80:$( minikube ip )" -i http://api.bookmarker