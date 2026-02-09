#!/bin/bash
mkdir -p ~/secure_vault
touch ~/secure_vault/keys.txt ~/secure_vault/secrets.txt ~/secure_vault/logs.txt

echo "Welcome to the keys file where encryption keys are stored" > ~/secure_vault/keys.txt
echo "Welcome to the secret file where confidential data are stored" > ~/secure_vault/secrets.txt
echo "Welcome to the logs file where all logs are stored" > ~/secure_vault/logs.txt

echo "The directory secure_vault along side the files keys.txt, secrets.txt and logs.txt have been successfully created."

ls -l ~/secure_vault
