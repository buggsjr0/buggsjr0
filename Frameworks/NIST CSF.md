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

## Why NIST CSF is different from 800-53 and 800-37
CSF is the dashboard, 800-53 is the engine and 800-37 is the maintenance schedule

|  | NIST CSF | NIST 800-53 | NIST 800-37 |
|-----| -----| ----- | ----- |
| Altitude | 30,000 ft (strategic | Ground level (technical) | Process level |
| Audience | Executives, board, all industries | Engineers, auditors | Risk/compliance teams |
| Mandatory | Voluntary (widely adopted) | Mandatory for federal systems | Mandatory for federal systems |
| Format | 6 functions (plain english) | 1,000+ detailed controls | 7 step process |
| Used for | "How mature are we?" | "What exact safeguard do we implement?" | "How do we manage risk over time?" |

---

## Why this matters for a SOC Analyst
SOC analyst mostly live in Detect and Respond, but understanding the full wheel is essential to thouroughly comprehending the big picture. 

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
