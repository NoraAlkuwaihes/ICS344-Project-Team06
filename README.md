# ICS344-Project


- **Group Number**: 06
- **Section Number**: F07

## Team Members and work Distribution Table

| Name   | ID           | Contribution |
|--------|--------------|--------------|
| Shahad Sulais | 202181130    | Phase 1 – Metasploit attack and brute-force scripting |
| Norah Alkhalifa  | 202167990    | Phase 2 – SIEM dashboard setup and log analysis |
| Nora Alkuwaihes  | 202171050    | Phase 3 – Fail2Ban setup and defense validation |

## Project Overview  
This project simulates real-world cybersecurity tasks in three phases. The goal is to exploit a vulnerable system, analyze the attack using a SIEM tool, and implement a defense mechanism. Each phase builds foundational skills in ethical hacking, threat analysis, and system protection.

## Project Phases

### Phase 1: Setup and Compromise the Service
**Goal:** Set up Metasploitable3 as the victim machine and use Kali Linux to compromise an exposed service (e.g., SSH).  
**Tools Used:** Metasploit, Hydra, and a custom brute-force script.

**Tasks:**
- Verify SSH service is running.
- Write and execute a Bash script using Hydra.
- Successfully compromise SSH service.

**Deliverables:**
- Screenshot of SSH service status.
- Screenshot of brute-force script execution.
- Proof of successful login using discovered credentials.
---
### Phase 2: SIEM Dashboard Analysis
**Goal:** Analyze logs from the victim machine using a SIEM tool to understand the attack pattern.  
**Tool Used:** Splunk (or any other SIEM tool).

**Tasks:**
- Integrate logs from the victim environment.
- Visualize and analyze attack attempts.
- Compare pre- and post-attack activity.

**Deliverables:**
- Screenshot of log integration in SIEM.
- Dashboard showing attack details and patterns.
---
### Phase 3: Defensive Strategy Proposal
**Goal:** Implement a defense mechanism to prevent or mitigate the attack.  
**Strategies Considered:** Firewall configuration, fail2ban, disabling root login, enforcing key-based authentication, etc.

**Tasks:**
- Apply defense mechanism.
- Re-run the attack to test its effectiveness.
- Compare system behavior before and after the defense.

**Deliverables:**
- Screenshot of applied defense (e.g., firewall rules, config changes).
- Screenshot of failed login attempt after defense.
- Before-and-after comparison evidence.


