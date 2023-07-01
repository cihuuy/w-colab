#!/bin/bash

echo "Download Ngrok"
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip 
unzip ngrok.zip > /dev/null 2>&1
sleep 2

NGROK_AUTH_TOKEN="2RIDE4oxtvtFSHR9Ea1dI3BZnZo_4hoNaQK6cLt3j3WHpjc9E"
./ngrok authtoken $NGROK_AUTH_TOKEN

screen ./ngrok tcp --region ap 22 

echo "Ngrok setup completed"
echo "========="

#close
