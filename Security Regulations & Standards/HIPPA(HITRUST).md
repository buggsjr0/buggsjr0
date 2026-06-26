# HIPPA (HITRUST) <br/>

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
## Who Does HIPPA Cover?

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
- HITRUST organizes controls into 19 domains, the following are for SOC analysts:

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
- AFormal IR policy required <br>
- IR team must be designated <br>
- Incidents must be categorized by severity <br>
- PHI involved incidents must have a HIPAA breach assessment<br>
- Lessons learned process mandated<br>
- IR plan tested annually<br>
</details>




| | Triggers notification|
| ----- | ----- |
| ✅ | Unauthorized access to personal data |
| ✅ | Ransomware encrypting personal data |
| ✅ | Data exfiltration |
| ✅ | Accidental exposure of personal data |
| ✅ | Lost/stolen device containing personal data |
| ✅ | Insider threat accessing data without authorization |
| ❌ | Attack on system with no personal data |
| ❌ | DDoS with no data access |
| ❌ | Incident fully contained with no data exposure | 
>[!NOTE]
>The clock starts when the organization becomes aware, not when it can fully confirm scope. This is why SOC triage speed is a GDPR compliance issue. 

---
## GDPR's Two Enforcers

| Role | Who They Are | SOC Importance |
|-----| ----- | ----- |
| Data Controller | The organization: decides why and how data is processed | Who gets notified in a breach? Controller is responsible|
| Data Processor | Vendor/third party processing data on tour behalf (cloud providers, SaaS tools) | Breach at processor still triggers Controller's obligations |
>[!NOTE]
>If your SIEM vendor, EDR vendor or cloud logging provider gets breached and they hold your organizations personal data, the 72 hour clock may still start. Third party breach monitoring is important 

## GDPR Fines

|Tier| Simplified Description|
|-----| -----|
| 1 | Up to 10 million Euros or 2% of global annual revenue (Whichever is higher)   |
| 2 | Up to 20 million Euros or 4% of global annual revenue (Whichever is higher) |

- Real World Examples

| Company | Fine (Euros) | Reason |
|-----| -----| ----- |
| Meta | 1.2 billion | Data transfer violations |
| Amazon | 746 million | Advertising data misuse |
| TikTok | 530 million | Data transfer violations |
| Meta | 405 million | Children's data exposed by default |
| Google | 380 million | Cookie consent violations (3rd CNIL fine) |


---
## Audit and Certifications
<details>
<summary>Regular Audits</summary>
- Reactive, triggered by complaints. <br>
- Reported by breaches <br>
- DPAs also run sector sweeps <br>
</details>

<details>
<summary>Certifications (Voluntary) </summary>
- Europrivacy - EDPB approved<br>
- ISO/IEC 27701 - privacy mgmt<br>
- National schemes (CNIL, etc.)<br>
</details>

<details>
<summary>Mandatory Obligations </summary>
- DPO if required (Art. 37)<br>
- DPIA for high risk (Art. 35)<br>
- Record of processing (Art. 30)<br>
</details>

<details>
<summary>What Companies Actually Do </summary>
- Internal annual privacy review<br>
- Hire a consultant for gap audits<br>
- Certify if customers demand it<br>
</details>

---

## GDPR vs Other frameworks<br>

| | GDPR | PCI DSS | NIST 800-53 |
| ----- |-----| -----| ----- |
| Focus | Privacy of personal data | Payment card security | General security controls
| Mandatory | Yes (if EU data involved) | Yes (if process cards)  | Yes (Federal systems)
| 72hr breach notification | Yes | Yes (card brands) | Varies |
| Fines | Up to 4% global revenue| Fines + card processing suspension | Varies |
| Who owns it | EU regulators | Card brands (Visa, Mastercard etc.) | U.S. Government (NIST)

---
### Key Takeaway 
GDPR transforms privacy into a right and security operations responsibility. Every time an alert touches a system that hold EU personal data, a 72 hour clock could begin it's countdown. Understanding GDPR means honoring user rights, a faster triage, better documentation and process data lawfully. 
