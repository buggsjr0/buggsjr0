# HIPAA (HITRUST) <br/>

- HIPPA is the law protecting paitent health data. HITRUST is the certification that proves your security program meets HIPAA requirements.
---
## HIPAA vs. HITRUST<br>

| HIPAA | HITRUST | 
|-----| -----|
| Federal Law (must comply) | Private Framework (choose to certify) | 
| Sets the rules| Proves you follow the rules|
| "Here's what the law requires" | "Here's a rigorous way to prove it's being done" | 
| Enforced by HHR/OCR (government) | Audited by HITRUST assessors (private) |

---
## Who Does HIPAA Cover?

| Covered Entities  | Business Associates |
|-----| -----|
| Hospitals | Cloud providers storing PHI|
| Docters Office's| Billing companies |
| Health insurance companies| IT vendors with PHI access |
| Pharmacies | Law firms handling health cases |
| Health clincs | Any company that that touch PHI | 


>[!NOTE]
>If your organization provides security services to a healthcare company and your tools touch their data, than you're a business associate and HIPAA applies.
---
## PHI
- Protected Health Information is any info that connects a person to their health data. 

| |  18 PHI Identifiers | 
|-----| ----- |
| 1 | Name|
| 2 | Geographic data |
| 3 | Dates: Birth, death, admit|
| 4 | Phone numbers |
| 5 | Fax numbers |
| 6 | Email addresses |
| 7 | Social Security numbers |
| 8 | Medical record numbers |
| 9 | Health plan beneficiary numbers |
| 10 | Account numbers |
| 11 | Cert/license numbers |
| 12 | License plates |
| 13 | Device identifiers/serial numbers|
| 14 | URLs |
| 15 | IP addresses |
| 16 | Biometric identifiers |
| 17 | Full face photos|
| 18 | Any unique identifers |
>[!NOTE]
>IP addresses are PHI in a healthcare context. Your logs, SIEM data and network captures in a healthcare environment are also PHI.  

---
## Impactful HIPAA Rules FOR SOC Analyst
📋 Rule 1: The Privacy Rule
- Controls who can access PHI and for what reason

| PHI can only be used for | 
|-----|
| Treatment of the patient |
| Payment for services |
| Healthcare operations |
| With explicit patient authorization |
>When investigating an incident only access what's necessary. <br>


🔒 Rule 2: The Security Rule
- Security rule has three categories of safeguards:

| Admin Safeguards | 
|-----|
| Security officer must be designated |
| Risk analysis must be conducted regularly |
| Worlforce security training required |
| Access mgmt policies required |
| Incident response procedures required | 



| Physical Safeguards | 
|-----|
| Facility access controls |
| Workstation security policies |
| Device and media controls |
| Server room physical protection | <br>



| Technical Safeguard | Meaning | SOC Tool |
|-----| -----| ----- |
| Access controls | Only authorized users touch PHI | IAM, PAM, MFA |
| Audit controls| Log all PHI access | SIEM, logging |
| Integrity controls | PHI can't be altered without detection | File integrity monitoring | 
| Transmission security | Encrypt PHI in transit | TLS, VPN monitoring | <br>

🚨 Rule 3: The Breach Notification Rule
- Rule that makes HIPAA a SOC operations problem

| Breach Confirmed |  
|-----|
| Individuals affected must be notified within 60 days of duscovery |
| HHS (Dept of Health & Human Svc) notified. Annualy for breaches under 500 and within 60 days for breaches greater than 500 individuals |
| Media notification required if affects 500+ individuals in a state |
>[!NOTE]
>HIPAA's 60 day clock starts at discovery  

---

## 4 Levels of HIPAA Violations
-Not all HIPAA failures are viewed equally:

<details>
<summary>Tier 1</summary>
- Didn't know & coudn't have known. <br>
- $100 - $50,000 per violation <br>
- "Mistake with no known negligence" <br>
</details>

<details>
<summary>Tier 2</summary>
- Sould have known but didn't. <br>
- $1,000 - $50,000 per violation <br>
- "Reasonable diligence could have caught it" <br>
</details>

<details>
<summary>Tier 3</summary>
- Willful neglect, but corrected <br>
- $10,000 - $50,000 per violation <br>
- "Knew there was a problem and eventually fixed it" <br>
</details>

<details>
<summary>Tier 4</summary>
- Willful neglect, and not corrected <br>
- $50,000 per violation <br>
- Annual cap of $1.9 million per violation and criminal referral possible. <br>
</details>


---
## HITRUST, The Certification Framework
- Why HITRUST exist? To provide a framework on "how to know if a vendor is actually secure. HITRUST solves this by: 

| Taking Requirements From|
|----- |
| HIPAA Security Rule |
| NIST 800-53 |
| ISO 27001 |
| PCI DSS |
| GDPR |
| Other Frameworks |
>[!NOTE]
>Instead of proving HIPAA, NIST and PCI compliance separately, one HITRUST certification covers them all. 

---
## HITRUST Control Categories for SOC
HITRUST organizes controls into 19 domains, the following are common for SOC analysts:

<details>
<summary>7: Vulnerability Mgmt</summary>
- Regular vulnerability scanning required <br>
- Critical vulnerabilities pathched within defined SLAs <br>
- Penetration testing required <br>
- Remediation tracked and verified <br>
</details>

<details>
<summary>9: Access Control</summary>
- Unique user IDs mandatory <br>
- Privileged access strictly controlled <br>
- Remote access requires MFA <br>
- Access reviews conducted regularly<br>
- Shared accounts prohibited<br>
</details>

<details>
<summary>10: Audit Logging & Monitoring</summary>
- All PHI access must be logged <br>
- Logs must be reviewed regularly <br>
- SIEM or equivalent required for high risk orgs <br>
- Log integrity<br>
- Log retention is minimum of 6 years<br>
- Suspicious activity must generate alerts<br>
</details>

<details>
<summary>11: Incident Mgmt</summary>
- A formal IR policy required <br>
- IR team must be designated <br>
- Incidents must be categorized by severity <br>
- PHI involved incidents must have a HIPAA breach assessment<br>
- Lessons learned process mandated<br>
- IR plan tested annually<br>
</details>

---
## Common Healthcare Threat Landscape
When supporting healthcrare, these are some of the possible threats:

🏥 #1 — Ransomware
Healthcare is one of the most target sectors for ransomware.
- PHI has high black market value ($250 - $1000 per record vs $% for a credit card
- Hospitals can't afford downtime and are more likely to pay
- Legacy systems, unpatched devices are abundant
- Medical devices running outdated OS
- Life or death urgency creates pressure to restore immediately
> [!TIP]
> Indicators to watch: Lateral movement toward PHI, large volume encryption activity on file servers, known ransomware communication, backup deletions command and RDP brute force attempts. 


💊 #2 — Insider Threat
Healthcare has high insider threat risk:
- Large workforce with legitimate PHI access
- Disgruntled employees with broad access
- Credential sharing
- Family member record access
> [!TIP]
> Indicators to watch: Access to records outside of normal hours, bulk record access, user accessing records of patients they're treating, PHI access from unusual locations or devices.


🎣 #3 — Phishing → Credential Theft
- Healthcare workers underpressure
- "Patient referral" themed lures highly effective
- Stolen Credentials
- MFA bypass increasingly used by attackers 


💻 #4 — Medical Device Compromise
- MRI machines, infusion pumps, monitoring sytems
- Often running legacy OS, unpatched and unmanaged
- Rarely have EDR or logging
- Connected to clinical networks -> lateral movement risk
- IoMT (Internet of Medical Things) is a blind spot
--- 

### Key Takeaway 
HIPAA makes healthcare data the most legally protected personal information in the US and HITRUST is how serious healthcare organizations prove their protection is real. The data being protected (PHI) is highly valuable to attackers and triggers strict legal obligations when compromised. Investigations and how they're conducted, what you access, how long you retain it and how throughly you documented is necessary for compliance. In healthcare security accurate and swift responses means more time for legal teams to manage a 60 day notification window, higher penalty fees and potential placement on unsatisfactory lists. 
