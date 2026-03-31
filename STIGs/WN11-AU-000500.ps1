 <#
.SYNOPSIS
    This PowerShell script requires Windows 11 to log sucessful logon attempts.

.NOTES
    Author          : Jr Buggs
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-01-05
    Last Modified   : 2026-01-05
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\__remediation_template(STIG-ID-WN11-AU-000500).ps1 
#>


# Define the registry path and value
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Eventlog\Application"
$valueName = "MaxSize"
$valueData = 32768  # 0x000080000 in hexadecimal 

#Check ifd regiatry path exists, if not create it 
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
}

#Set the MaxSize value
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type Dword

#Output success message 
Write-Host "Registry value '$valueN 
