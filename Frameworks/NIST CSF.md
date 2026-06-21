# NIST CSF <br/>

- NIST CSF is not a list of technical controls, but more of a high level framework for organizing and communicating "how good is our cybersecurity?". Built so non-technical audiences and security engineers can understand the same picture. <br>
- It's voluntary and used across all industries, not just government which is why it's so widely adopted (banks, hospitals, retailers, startups). 
---
## The 6 Core Functions (CSF 2.0)<br>
| Function | Simplified Description| 
|-----| -----|  
| Govern | Set the strategy, policy and accountability  |
| Identify | Know what you have and what could go wrong |
| Protect | Put safeguards in place |
| Detect | Monitor for for IOC's  |  
| Respond | Act on confirmed IOC's |
| Recover | Restore and continue operations  |

>[!NOTE]
> Govern is the big change in CSF 2.0, it sits beneath all of the other functions beacuse risk strategy and policy now apply across the entire lifecycle, not just the beginning. 

---

## Why NIst CSF is different from 800-53 and 800-37
CSF is the dashboard, 800-53 is the engine and 800-37 is the maintenance schedule

|  | NIST CSF | NIST 800-53 | NIST 800-37 |
|-----| -----| ----- | ----- |
| Altitude | 30,000 ft (strategic | Ground level (technical) | Process level |
| Audience | Executives, board, all industries | Engineers, auditors | Risk/compliance teams |
| Mandatory | Voluntary (widely adopted) | Mandatory for federal systems | Mandatory for federal systems |
| Format | 6 functions (plain english) | 1,000+ detailed controls | 7 step process |
| Used for | "How mature are we?" | "What exact safeguard do we implement?" | "How do we manage risk over time?" |

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
