<#
.SYNOPSIS
    This PowerShell script ensures that the required legal notice must be configured to display before console logon
.NOTES
    Author          : Jr Buggs 
    LinkedIn        : 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-03-31
    Last Modified   : 2026-03-31
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000075

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
Why this matters

Without this banner:

You may lose legal authority to prosecute unauthorized users
Attackers could claim: “I didn’t know I wasn’t allowed to access this system”

DISA requires this because legal notice = legal protection.


### Real-World Scenario (Why this matters)

An insider accesses a classified system without permission
You catch them and take legal action

In court, they argue:

“There was no warning or policy shown. I didn’t know monitoring was happening.”

If the banner wasn’t configured:

Evidence could be challenged
Case could be dismissed
Organization loses legal protection

That’s why this is a CAT II (serious) finding.

    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-SO-000075).ps1 
#>
Run This command:

$path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$value = "You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only."

Set-ItemProperty -Path $path -Name LegalNoticeText -Value $value
