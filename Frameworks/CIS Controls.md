# CIS Critical Security Controls <br/>

- CIS controls answer "out of everything we could do, what gives us the biggest security bang for our buck, in what order?". <br>
- Built by actual practitioners, based on real world attack data. CIS controls is attacker informed and highly prioritized.
---

## CIS Controls vs NIST: The Why<br>
|  | NIST CSF | NIST 800-53 | CIS Controls |
|-----| -----| ----- | ----- |
| Style | Strategic wheel | Exhaustive catalog | Prioritized checklist |
| Built by| Government | Government | Industry/practitioner community |
| Best for | "Are we mature?" | "What's the exact control text?" | "What do we do first" |
| Based on | Risk mgmt theory | Comprehensive coverage | Real world attack data |
| Number of Items | 6 functions | 1,000+ controls | 18 controls, 153 safeguards |

>[!NOTE] 
> CIS Controls tells you exactly which items are critical and immediate steps 

--- 

## Implementation Groups (IGs): Built in Prioritization
CIS scales your organization's maturity

🛡️ IG1
> Essential Cyber Hygiene

- Small org, limited resources
- Most impactful to avoid being an easy target 
- 56 safeguards

🛡️ IG2
> IG1 + More

- Mid-size org, dedicated IT/security staff
- 74 more safeguards, 130 total

🛡️ IG3
> IG1 + IG2+ More

- Mature org, high value target, regulated
- 23 more safeguards, 153 total

>[!NOTE] 
> IG1 alone is shown to stop the vast majority of common attacks, which is why its so valuable. It's a "do these specific things and you've blocked most real world attacks"
---

## The 18 Controls (Quick Description)

| Controls | |
| ------------- | ------------- |
| 1. Inventory of Enterprise Assets | 10. Malware Defenses  |
| 2. Inventory of Software Assets | 11. Data Recovery |
| 3. Data Protection | 12. Network Infrastructure Mgmt |
| 4. Secure config of Assets| 13. Network Monitoring & Defense |
| 5. Account Mgmt | 14. Security Awareness Training |
| 6. Access Control Mgmt | 15. Service Provider Mgmt |
| 7. Continuous Vulnerability Mgmt | 16. Application Software Security |
| 8. Audit Log Mgmt | 17. Incident Response Mgmt |
| 9. Email & Web Browser Protections | 18. Penetration Testing|

>[!NOTE] 
> 1 and 2 are "Know what you have" because you cannot protect or detect threats on assets you don't know exist. This is the root cause of breaches CIS data points to. 

---
## The Controls That Matter Most to a SOC Analyst

📋 CIS Control 8: Audit Log Management
> Bread and Butter: same spirit as NIST AU family

| Safeguard | SOC Meaning| 
|-----| -----|  
| 8.1 | Establish audit log management process |
| 8.2 | Collect audit logs from all systems |
| 8.3 | Collect detailed logs  |
| 8.9 | Centralize log collection (SIEM)  |  
| 8.11 | Conduct audit log reviews to detect anomalies | 
>[!NOTE] 
> If logs aren't flowing or not detailed enough, then an analyst can't follow and working blind


🛡️ CIS Control 13: Network Monitoring & Defense
> Essential controls for analyst

| Safeguard | SOC Meaning| 
|-----| -----|  
| 13.1 | Centralize security event alerting |
| 13.2 | Deploy host-based IDS |
| 13.3 | Deploy network-based IDS  |
| 13.6 | Collect network traffic flow logs |  
| 13.7 | Deploy EDR on endpoints | 
| 13.11 | Tune your security event alerting thresholds | 
>[!NOTE] 
> 13.11 is vital. Alert fatigue is real and this control tells orgs to tune detections so analysts aren't drowning in noise. Limit false positives


🚨 CIS Control 17: Incident Response Management
> Mirrors NIST 800-61, but more action oriented

| Safeguard | SOC Meaning| 
|-----| -----|  
| 17.1 | Designate IR personnel |
| 17.4 | Establish and maintain an IR process |
| 17.5 | Assign roles and responsibilities  |
| 17.7 | Conduct routine IR exercises (tabletop drills) |  
| 17.9 | Establish and maintain security incident thresholds |
>[!NOTE] 
> 17.9 is key. It defines when something becomes an "incident" vs just an event, your triage decision tree


🔐 Control 5 & 6: Account & Access Management
> Where most real world breaches start

| Safeguard | SOC Meaning| 
|-----| -----|  
| 5.2 | Unique passwords (no shared accounts) |
| 5.3 | Disable dormant accounts |
| 6.1 | Establish access granting process |
| 6.2 | Establish access/revoking process |  
| 6.5 | Require MFA for admin access |
>[!NOTE] 
> 6.2 (revoking access) is one of the most common real world failure points. A large portion of insider threat and ex-employee incidents trace back to this. When there's an alert from a "terminated or "should be disabled" account, thats CIS 6.2 failure in action.


🦠 Control 10 — Malware Defenses

| Safeguard | SOC Meaning| 
|-----| -----|  
| 10.1 | Deploy anti-malware software |
| 10.2 | Configure automatic updates |
| 10.5 | Enable anti-exploitation features |
| 10.7 | Use behavior-based detection (not just signatures) |  

---

## Why CIS Controls Feel More "SOC-Friendly" than NIST 800-53

|  | NIST 800-53 | CIS Controls| 
|-----| -----| ----- |
| Tone| Lehal/compliance language| Practical, action oriented |
| Length | 1,000+ controls, dense | 153 safeguards, digestible |
| Prioritization | Flat, everything in a baseline is required | Built in (IG1 -> IG2 -> IG3) |
| Origin | Government risk mgmt | Real breach/attack data|
| Used for | "Here's the law" | "Here's what works" | 


---

## Mapping Cheat Sheet"<br>

- NIST CSF "Detect"  ≈  CIS Controls 8 + 13
- NIST CSF "Respond" ≈  CIS Control 17
- NIST CSF "Protect" ≈  CIS Controls 4, 5, 6, 9, 10
- NIST CSF "Identify"≈  CIS Controls 1, 2, 7
- NIST 800-53 AU     ≈  CIS Control 8
- NIST 800-53 IR     ≈  CIS Control 17
- NIST 800-53 AC     ≈  CIS Controls 5, 6
- NIST 800-61        ≈  CIS Control 17 (operationalized)

---
### Key Takeaway 
CIS Controls are the prioritized, attacker-informed action list that sits between the strategic altitude of NIST CSF and the exhaustive technical depth of NIST 800-53. As a SOC analyst, it's arguably the most operationally useful framework of all of them: Controls 8 (logging), 13 (monitoring), 17 (incident response), and 5/6 (access control) map almost directly onto daily workflow. While NIST frameworks tell you what's required for compliance, CIS Controls tells you what actually stops real attacks and in what order to build it.

