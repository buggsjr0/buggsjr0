 <#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : James Buggs
    LinkedIn        : linkedin.com/in//
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-05-01
    Last Modified   : 2026-05-01
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
    Put any usage instructions here.
    Example syntax:
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
