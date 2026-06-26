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
## 7 GDPR Principles

|  |Category  | Examples|
|-----|-----| -----|
| 1 | Lawfulness, Fairness, Transparency | Have a legal basis. Tell people clearly |
| 2 | Purpose Limitation | Collect data for one specific reason |
| 3 | Data Minimization | Only collect what is needed |
| 4 | Accuracy | Keep data accurate and up to date |
| 5 | Storage Limitation | Don't keep data longer than necessary |
| 6 | Integrity & Confidentiality | Protect data with appropriate security |
| 7 | Accountabiliity | You must be able to prove you're doing all the above |
>[!NOTE]
>Documentation is what makes accountability real. 

---
## Lawful Basis
GDPR states organizations must have a legitimate reason for holding personal data:

|     | Category  | Examples | 
|-----|-----| -----|
| 1 | Consent | Person explicitly agreed |
| 2 | Contract| Need to fulfill a service |
| 3 | Legal obligation | Required by law |
| 4 | Vital interests | Protecting someone's life |
| 5 | Public Task | Official government function |
| 6 | Legitimate interest | Organizational need |
>When investigating an incident involving personal data, understanding why the organization holds that data helps scope the breach and its GDPR impact. 

---

## The 8 individual Rights
Under GDPR, every EU resident has these rights over their data:

| Right | Explanation  | SOC Relevance | 
|-----|-----| -----|
| Right to be informed | Know what data is collected and why | Privacy notice required|
| Right of access | Request copy of their data | Can't be obstructed during incident  |
| Right to rectification | Fix inaccurate data | Data integrity matters |
| Right to erasure | Ability to be forgotten | Deleted, but may not be gone from backups |
| Right to restrict processing | Pause how data is used | Could impact active investigations |
| Right to data portability | Data in a usable format | Secure transfer requirements |
| Right to object | Stop certain data processing | Affects marketing/profiling systems |
| Right not to be profiled | No automated decisions affecting them | AI/ML systems under scrutiny |


---
## 72 Hour Breach Notification Rule
Possibly the most operationally cirtical GDPR requirement for SOC analysts

| | Breach Occurs|
|-----| -----|
| T+0 | Breach detected and confirmed |
| T+24 | Internal escalation: Legal, Privacy, CISO, Leadership notified|
| T+48 | Draft notification being prepared. Scope of personal data affected assessment |
| T+72 | Supervisory authority must be notified (ICO in UK, CNIL in France, BfDI in Germany) |
>[!NOTE]
>If individuals at high risk, notify them as well. No fixed deadline, but "without undue delay"

---
## What triggers the 72 hour clock?
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
