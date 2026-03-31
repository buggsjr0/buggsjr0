<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Jr Bugggs 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-03-31
    Last Modified   : 2026-03-31
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000110

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
Imagine a government employee prints a document containing:

Personnel records
System architecture diagrams
Login procedures

If HTTP printing is allowed:

The system could send that print job over the internet to a misconfigured or malicious printer
An attacker intercepts the HTTP traffic (since it may not be properly secured)
Sensitive data is exposed without the user realizing it

Result: Data breach + compliance violation + possible mission impact

    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000110).ps1 
#>
Run this script:


New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers" -Name DisableHTTPPrinting -Value 1 -Type DWord
