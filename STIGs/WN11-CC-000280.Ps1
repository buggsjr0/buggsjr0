<#
.SYNOPSIS
    This PowerShell script ensures that the Remote Desktop Services must always prompt a client for passwords upon connection.

.NOTES
    Author          : Jr Buggs 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-03-23
    Last Modified   : 2026-03-023
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000280

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Remote Desktop Services must always prompt a client for passwords upon connection.
    PS C:\> .\STIG-ID: WN11-CC-000280.ps1
#>


New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" `
  -Name "fPromptForPassword" -Value 1 -PropertyType DWord -Force
