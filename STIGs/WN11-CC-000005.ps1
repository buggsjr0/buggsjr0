<#
.SYNOPSIS
    This PowerShell script ensures that Camera access from the lock screen must be disabled.
.NOTES
    Author          : Jr Buggs
    LinkedIn        : 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-04-04
    Last Modified   : 2026-04-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000005 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000005).ps1 


What this setting protects against

This STIG helps enforce:

Physical security controls
User privacy protection
Prevents unauthorized access to hardware features before authentication

It ensures:

🔒 “If you’re not logged in, you can’t use sensitive hardware.”

Real-world scenario (Why this matters)

Imagine this:

An admin connects to a server via RDP and saves their credentials
They leave their laptop unattended at a coffee shop
An attacker opens Remote Desktop and clicks the saved connection

Result:

Instant access to a sensitive server
No password required
Potential data theft or system compromise

If this STIG were enabled:

The attacker would be stopped at the login prompt
They would need the actual password
#>

Run This Command:

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Force

New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" `
-Name "NoLockScreenCamera" -Value 1 -PropertyType DWORD -Force
