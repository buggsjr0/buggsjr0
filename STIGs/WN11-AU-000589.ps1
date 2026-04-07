<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Jr Buggs
    LinkedIn        : 
    GitHub          : github.com/buggsjr0
    Date Created    : 2024-04-07
    Last Modified   : 2024-04-07
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000589

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
Why this matters

Audit logs act like a security camera for your system.

Without this:

Failed attacks go unnoticed
Misconfigurations are harder to troubleshoot
You lose forensic evidence after an incident

With this enabled:

You can detect unauthorized access attempts
You get visibility into potential attacks
You can investigate incidents properly

DISA considers this important because audit trails are essential for detecting and analyzing compromises.




Real-world scenario:

An attacker gains limited access to a workstation.

They attempt to modify a registry key to:
Disable antivirus
Establish persistence (auto-run malware)
The attempt fails (maybe due to permissions)

 But auditing is OFF…

 No log is created
 Security team never sees it
 The attacker tries again later with success

Now:

Malware persists on reboot
Data exfiltration begins
No early warning signs were ever captured
   
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-AU-000589).ps1 
#>
Run this command:

AuditPol /set /subcategory:"Registry" /failure:enable
