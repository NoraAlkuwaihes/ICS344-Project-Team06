
# Phase 2 - SIEM Dashboard Analysis

## Objective
To analyze SSH brute-force attack activity by integrating logs from the victim machine into a SIEM platform (Splunk), visualizing authentication events, and identifying attack trends.

## SIEM Setup
- Splunk Enterprise was installed and launched successfully on a local machine.
- The log file `auth.log`, extracted from the victim (Metasploitable3), was ingested into Splunk.
- A custom index named `victim_logs` was used to organize the data.
- The source type was identified as `syslog`.

![Initial Log Search](Phase2%20Screenshots/Initial%20Search%20Result.png)

## Log Queries & Visualization
Three core SPL (Search Processing Language) queries were used to analyze login attempts:

### 1. Failed SSH Login Attempts
**SPL Query:**
```spl
index=victim_logs sourcetype=syslog "Failed password" | stats count by host
```
This query visualizes failed SSH login attempts.

- Panel created: `Failed SSH Login Attempts by Host`

![Failed SSH Login Attempts Query](Phase2%20Screenshots/(Failed%20password)%20query.png)
![Failed SSH Login Panel](Phase2%20Screenshots/Failed%20SSH%20Login%20Panel%20(Bar%20Chart).png)

### 2. Successful SSH Login Attempts
**SPL Query:**
```spl
index=victim_logs sourcetype=syslog "Accepted password" | stats count by host
```
This query visualizes successful login attempts.

- Panel created: `Successful SSH Login Attempts`

![Successful SSH Login Attempts Query](Phase2%20Screenshots/(Accepted%20password)%20query.png)
![Successful SSH Login Panel](Phase2%20Screenshots/Successful%20SSH%20Login%20Panel.png)

### 3. Comparative Breakdown (Failed vs. Successful)
**SPL Query:**
```spl
index=victim_logs sourcetype=syslog "password"
| eval status=if(match(_raw,"Failed password"),"Failed","Successful")
| stats count by status
```
This gives a breakdown of failed vs successful attempts.

- Panel created: `SSH Login Outcome Breakdown`

![Failed vs. Successful Query](Phase2%20Screenshots/(Failed%20vs.%20Successful)%20login%20analysis%20query.png)
![Login Outcome Breakdown Panel](Phase2%20Screenshots/Login%20Outcome%20Breakdown%20Panel.png)

## Final Dashboard View
All three panels were combined into a unified dashboard titled `SSH Attack Analysis`, allowing easy visual monitoring of brute-force login activity.

![Full Dashboard](Phase2%20Screenshots/Full%20Dashboard%20View.png)

## Summary of Deliverables
-  Screenshot of SIEM integration showing parsed log data.
-  Visual panels for:
  - Failed login attempts
  - Successful login attempts
  - Overall login outcome breakdown
-  Final consolidated dashboard view
