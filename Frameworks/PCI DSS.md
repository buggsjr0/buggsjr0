# PCI DSS <br/>
PCI DSS (Payment Card Industry Data Security Standard) is the set of rules and standards created by card brands (Visa, Matsercard, Amex, Discover) and enforced through contracts and fines. <br>
---
## The Cardholder Data Environment (CDE)<br>
Where card data lives, moves or gets processed. 
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
## The Controls that matter the most to a SOC Analyst

- 📋 AU — Audit & Accountability
> The SOC's homebase, every alert you investigate is 800-53 AU controls in action

| Control | Meaning for Analyst |
| ----- | ----- | 
| AU-2 | Defines which events must be logged | 
| AU-3 | Specifies what each log entry must contain |
| AU-6 | Requires log review |
| AU-9 | Logs must be protected from tampering |
| AU-11 | Log retention requirements |
| AU-12 | System must generate audit records |

- 🚨 IR — Incident Response
> Controls that formalize the SOC process. When following a playbook, you're satisfying IR controls

| Control | Meaning for Analyst |
| ----- | ----- | 
| IR-1 | Org must have an IR policy | 
| IR-4 | Incident handling procedures must exist |
| IR-5| Incidents must be tracked and documented|
| IR-6 | Incidents must be reported to authorities|
| IR-8 | Incident response plan must be maintained |

- 🔐 AC — Access Control
>Controls that define who can touch what. When invesitgating privilege escalation or unauthorized access alerts these are AC control failures

| Control | Meaning for Analyst |
| ----- | ----- | 
| AC-2 | Account mgmt: who has access | 
| AC-3  | Access enforcement: least privilege |
| AC-6 | Least privilege: need-to-know only|
| AC-17  | Remote access controls|

-🛡️ SI — System & Information Integrity
>Controls that keep systems clean and trustworthy. Mandates the monitoring tools exist at all. 

| Control | Meaning for Analyst |
| ----- | ----- | 
| SI-3| Malicious code protection | 
| SI-4 | System monitoring: IDS/IPS, SIEM |
| SI-7 | Software and file integrity monitoring|
| SI-10  | Input validation (injection attacks)|

⚙️ CM — Configuration Management
>Controls that prevent misconfiguration attacks, which are one of the top attack vectors. When theres an alert for an unexpected open port or changed config, CM controls are what was violated. 

| Control | Meaning for Analyst |
| ----- | ----- | 
| CM-2| Baseline configurations must exist | 
| CM-6 | Config settings must be enforced |
| CM-7 | Least functionality: disable whats not needed|
| CM-8  | Inventory of systems and components|
---

## 800-53 vs. The Frameworks 

| Framework | Role | Relationship to 800-53
| ----- | ----- | ----- |
| NIST 800-37 (RMF)| Risk mgmt process | Tells you to select controls from 800-53 | 
| NIST 800-61 | Incident response | Lives inside IR family of 800-53 |
| PCI DSS | Payment card security | Maps heavily to 800-53 controls |
| NIST CSF  | High level security framework | 800-53 provides the detailed controls behind CSF
>800-53 is the engine that powers all the other frameworks

---
### Key Takeaway 
NIST 800-53 is the DNA of your SOC. Every tool, log, alert and report written traces back to a control in this catalog. No need to memorize the 1,000+ controls but knowing the key families means understanding not just what you're doing, but why it matters at an organizational and regulatory level. 
