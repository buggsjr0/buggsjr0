<#
.SYNOPSIS
    This PowerShell script ensures that users must be prevented from changing install options. 
.NOTES
    Author          : Jr Buggs
    LinkedIn        :
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-04-05
    Last Modified   : 2026-04-05
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000310

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
   Why this matters

If users can change installation options, they could:

Install unsafe or modified software
Bypass security protections
Escalate privileges indirectly

In short: it prevents users from sneaking in risky or unauthorized software configurations.


Real-world scenario (Why you should care)

Imagine a user downloads a free tool from the internet.

Without this STIG:

They modify installation options
Disable security prompts
Install it in a protected system directory

That software could:

Run with elevated privileges
Install hidden malware
Persist on the system undetected

With this STIG enforced:

The user cannot alter installation behavior
The install either follows secure policy or fails
    
PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000310).ps1 
#>
Run the following Script: 

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer" -Name "EnableUserControl" -Value 0 -Type DWord
