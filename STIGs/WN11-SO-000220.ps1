 <#
.SYNOPSIS
    This PowerShell script ensures that minimum session security for NTLM SSP-based servers must be enforced.

.NOTES
    Author          : Jr Buggs
    LinkedIn        : 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-04-11
    Last Modified   : 2026-04-11
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000220

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Why this matters

NTLM (especially older versions like NTLMv1) is vulnerable to:

Password cracking
Replay attacks
Man-in-the-middle attacks

Without strong session security:

Attackers can intercept authentication traffic
Extract password hashes
Potentially impersonate users

The STIG enforces secure communication during authentication sessions to prevent this.


Real-world scenario:

A legacy application forces NTLM authentication on your network.

The system allows weak NTLM settings (no encryption or NTLMv1)
An attacker on the same network captures authentication traffic
They use tools like Responder or hash cracking tools
The attacker cracks the password hash or relays it to another system

Result:

Unauthorized access to servers
Lateral movement across the network
Potential domain compromise

PS C:\> .\STIG-ID-WN11-SO-000220.ps1 
#>

Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" `
 -Name "NTLMMinServerSec" -Value 537395200# Output success message
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
 
