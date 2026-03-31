<#
.SYNOPSIS
    This PowerShell script ensures that Windows 11 requires strong sessioni keys (128-bit encryption) for secure communications. 

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
Why this matters (the risk)

Without this setting:

Systems could fall back to weak encryption
Attackers could intercept or decrypt network traffic
Sensitive data (passwords, files, sessions) could be exposed

This is especially dangerous on:

Shared networks
Government systems
Any environment with sensitive data

Weak session keys = easier for attackers to break encryption

### Real-world scenario

Imagine a user connects to a shared drive on the network:

Without strong session keys:
An attacker on the same network captures the traffic
Uses tools to crack weak encryption
Gains access to:
Files
Credentials
Session tokens
With this STIG enforced:
Traffic is encrypted with strong 128-bit keys
Even if intercepted, it’s practically unreadable


    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-SO-000075).ps1 
#>
Run This command:

Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" -Name RequireSecureNegotiate -Value 1 -Type DWord
