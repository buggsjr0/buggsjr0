# GDPR <br/>

- General Data Protoection Regulation is Europe's strict privacy law that controls how organizations collect, store, process and protect personal data. <br>
- It's an EU law, but it's reach is global. If you handle EU data it applies to you. 
---
## Key GDPR concepts<br>
Broad definition of personal data: 

|  | |
|-----| -----|
| 1 | Name |
| 2 | Email address |
| 3 | Phone number |
| 4 | Home address |
| 5 | Date of birth |
| 6 | Social Security / ID# |
| 7 | IP Address
| 8 | Cookie identifiers
| 9 | Device IDs
| 10 | Location data
| 11 | Behavioral patterns
| 12 | Pseudonymized data (if re-linkable)
> SIEM logs, PCAP data and endpoint telemetry are full of personal data under GDPR
---
- Payment terminals<br>
- Transcactions databases<br>
- E-comerce servers<br>
- Any system connected to the above<br>
>[!NOTE]
> Dependant on your enviornment, CDE is your highest priority zone. Any alert touching CDE systems jumps to the front of the line. 

---

## 12 Requirements
PCI DSS is organized into 6 goals with 12 requirements:

- 🏗️ Build & Maintain a Secure Network

| No. | Simplified Description|
|-----| -----|
| 1 | Install and maintain firewalls around card data |
| 2 | Don't use vendor default passwords (change "admin/admin") |

- 🔐 Protect Cardholder Data

| No. | Simplified Description|
|-----| -----|
| 3 | Dont store card data you don't need. Encrypt what you keep |
| 4 | Encrypt card data when it travels across networks |

- 🛡️ Maintain a Vulnerability Management Program

| No. | Simplified Description|
|-----| -----|
| 5 | Use and update antivirus/anti-malware |
| 6 | Keep systems patched and develop secure applications |

- 👮 Implement Strong Access Control

| No. | Simplified Description|
|-----| -----|
| 7 | Only give people access to card data they need (least privilege) |
| 8 | Keep systems patched and develop secure applications |
| 9 | Physically protect systems that store card data |

- 🔍 Regularly Monitor & Test Networks

| No. | Simplified Description|
|-----| -----|
| 10 | Log everything and monitor all access to card data  |
| 11 | Regularly test your security controls and run vulnerability scans |

-  📋 Maintain an Information Security Policy

| No. | Simplified Description|
|-----| -----|
| 12 | Have a written security policy everyone follows  |


---

## PCI DSS day-to-day in the SOC<br>
🚨 Requirement 10: Your Best Friend & Biggest Responsibility

- Logs must be collected and retained (typically 12 months)
- Time synchronization (NTP) must be enforced: timestamps matter in investigations
- Logs must be tamper proof: attackers can't be allowed to cover tracks
- The analyst is the human layer enforcing this requirement every shift

| Req 10 Checklist for SOC | 
| ----- |
| ✅ Are CDE logs flowing into SIEM? |
| ✅ Are alerts firing on CDE access anomalies? |
| ✅ Is log retention policy being met? |
| ✅ Are we alerting on log tampering?|

---

## How PCI changes your alert triage

Normal alert on a random server -> Standard Triage<br>
Same alert on CDE System -> Immediate escalation, Compliance team notified, May require mandatory reporting<br>

📞  Breach Notification Is Not Optional
If cardholder data is compromised, PCI DSS requires:<br>

- Immediate containment<br>
- Notification to the card brands and acquiring bank<br>
- Potential forensic investigatino (PCI Forensuc Investigator / PFI)<br>
- Strict timelines: urgency is needed<br>

---

## Data Types, Storage and Ecryption 

| Data Type | Can Store? | Must Encrypt? | 
| ----- | ----- | ----- |
| Primary Account Number (PAN): the card number | Yes | Always |
| Cardholder name | Yes | Recommended |
| Expiration date| Yes | Recommended |
| CVV/Security code | Never after auth | N/A |
| Full magnetic stripe data | Never | N/A
| PIN/PIN block| Never | N/A
> If you ever see CVV or full track data in logs, database or transit: this is an automatic critical incident. 

---

- 🚨 PCI Compliance Levels
> Organizations are tiered by transaction volume

| Level | Dollar amount | Action taken |
| ----- | ----- | ----- | 
| Level 1 | 6M+ transaction/year | Full annual audit by QSA (outside auditor) | 
| Level 2 | 1M - 6M/year | Annual self-assessment questionnaire |
| Level 3 | 20K-1M/year | Quarterly network scans required |
| Level 4 | Under 20K/year | Basic self assessment |

---

- 🔐 Common PCI related threats SOC Analysts hunt for 

| Threat | What it looks like |
| ----- | ----- | 
| Card skimming malware| Unusual processes on POS systems, outbound connections to unknown IPs | 
| SQL injection on payment pages | WAF alerts, anomalous DB queries pulling PAN data |
| Lateral movement toward CDE | Internal host suddenly scanning or connecting to CDE systems |
| Credential stuffing | High volume failed logins on payment portals |
| Data exfiltration | Large outbound transfers from CDE systems, especially encrypted/compressed |


---
### Key Takeaway 
PCI DSS isn't just a compliance checkbox: it's a threat model. It tells you exactly what attackers want (card data), where it lives (the CDE) and what your organiztion has promised to do to protect it. 
