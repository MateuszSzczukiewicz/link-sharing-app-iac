#!/bin/bash

SERVER_IP=$1
SSH_USER=$2
SSH_PRIVATE_KEY_PATH=$3
SSH_PUBLIC_KEY=$4
ROOT_PASSWORD=$5

echo "SSH Public Key: $SSH_PUBLIC_KEY"

sshpass -p "$ROOT_PASSWORD" ssh-copy-id -i "$SSH_PRIVATE_KEY_PATH" "$SSH_USER@$SERVER_IP"

echo "VPS configuration complete!"
