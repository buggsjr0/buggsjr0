<#
.SYNOPSIS
    This PowerShell script ensures that the Windows 11 must be configured to require a minimum pin length of 6 characters

.NOTES
    Author          : Jr Buggs
    LinkedIn        : 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-04-08
    Last Modified   : 2026-04-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000260

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
Why this matters (Security Risk)

A 4-digit PIN = 10,000 combinations
A 6-digit PIN = 1,000,000 combinations

That’s a 100× increase in security.

Short PINs:

Can be guessed quickly
Are vulnerable to automated attacks
Put systems at risk even if passwords are strong


Real-World Scenario (Why you should care)

Imagine a government employee laptop:

PIN is set to 1234
Laptop is stolen from a coffee shop

An attacker:

Tries common PINs (1234, 0000, 1111…)
Gains access in minutes
Now has:
Sensitive emails
Internal documents
Network access tokens

If the PIN had been 6+ digits:

Attack becomes much slower and harder
May trigger lockouts before success
    
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000260).ps1 
#>

Run the following script:

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork\PINComplexity" -Force

Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork\PINComplexity" `
-Name "MinimumPINLength" -Value 6 -Type DWord
