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

| Controls | Controls |
| ------------- | ------------- |
| 1. Inventory of Enterprise Assets | 10. Malware Defenses  |
| Content Cell  | Content Cell  |

- 1 and 2 are "Know what you have" because you cannot protect or detect threats on assets you don't know exist. This is the root cause of breaches CIS data points to. 

🔍 Identify
> Asset inventory, knowing what's "normal" baseline traffic

- Can't detect anomalies on a system you don't know exists.
- SOC tie-in: shadow IT and unmanaged assets results in blind spots in monitoring. 

🛡️ Protect
> Firewalls, EDR, MFA, patching

- These are the control that (ideally) stop you from getting an alert
- SOC tie-in: when Protect fails, that's when you get alerted.

👁️ Detect
> Home base for SOC analysts

- SIEM alerts, anomaly detection, threat hunting
- SOC tie-in: core job description

🚒 Respond
> Triage, containment, escalation.

- Same activities as NIST 800-61 incident lifecycle 
- SOC tie-in: core job description

🔧 Recover
> Restoring systems, post incident hardening

- Possibly hand off to IT/infrastructure, but can work to verify clean recovery

🏛️ Govern
> Policy, risk-appetite, leadership accountability.

- SOC tie-in: governance decides budget, tooling and escalation procedures

---

## CSF Tiers: "How Mature Are We?"<br>
CSF also scroes organizational maturity, seperate from the functions

- Tier 1: Partial -> Reactive, ad hoc, no formal process
- Tier 2: Risk Informed -> Some awareness, inconsistent application
- Tier 3: Repeatable -> Formal policies, consistently applied
- Tier 4: Adaptive -> Continuously improving, proactive, agile

---
### Key Takeaway 
NIST CSF is the "exectuive summary" of cybersecurity. A simple, 6 function wheel (Govern, Identify, Protect, Detect, Respond and Recover) that gives every level of an organization a shared way to talk about security maturity. This 6 function wheel connects day-to-day work to organizational risk, budget decisions and other NIST frameworks (800-37, 800-53 and 800-61) that give CSF its technical foundation. 

