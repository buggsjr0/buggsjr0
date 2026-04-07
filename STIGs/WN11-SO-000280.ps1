<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Jr Buggs
    LinkedIn        : 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-04-06
    Last Modified   : 2026-04-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000280

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE

This setting makes sure a warning banner (legal notice) appears before a user logs into Windows.

This banner tells users:

The system is monitored
It’s for authorized use only


Real-World Scenario (Why this matters)

Imagine:

An insider accesses a classified system without permission
You catch them and take legal action

In court, they argue:

“There was no warning or policy shown. I didn’t know monitoring was happening.”

If the banner wasn’t configured:

Evidence could be challenged
Case could be dismissed
Organization loses legal protection

That’s why this is a CAT II (serious) finding.


   
    PS C:\> .\__remediation_template(STIG-ID-WN11-SO-000280).ps1 
#>

$path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$value = "You are accessing a monitored U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only"

Set-ItemProperty -Path $path -Name LegalNoticeText -Value $value
