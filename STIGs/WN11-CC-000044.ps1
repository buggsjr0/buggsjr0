 <#
.SYNOPSIS
    This PowerShell script ensures that Internet connection sharing must be disabled.
.NOTES
    Author          : Jr Buggs
    LinkedIn        : 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-04-18
    Last Modified   : 2026-04-18
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000044

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
Why this matters

While useful at home, ICS is dangerous in secure environments.

If enabled, it can:

- Turn a workstation into an unauthorized network gateway
- Bypass corporate firewalls and monitoring tools
- Allow untrusted devices onto a secure network
- Create a hidden backdoor path into the network

In DoD or enterprise environments, this completely breaks network security boundaries.

Real-world scenario:

An employee enables ICS on their workstation.

Their computer is connected to a secure corporate network
They also connect a personal device (or phone hotspot)

Now:

-The workstation becomes a bridge between secure and untrusted networks
-Malware from the personal device can enter the corporate network
-Security monitoring tools may not detect this side channel

This creates a shadow network path that bypasses all security controls.

In high-security environments, this could lead to:

-Data exfiltration
-Unauthorized access
-Full network compromise



PS C:\> .\STIG-ID-WN11-CC-000044.ps1 
#>
Run the following script:

Stop-Service -Name SharedAccess -Force
Set-Service -Name SharedAccess -StartupType Disabled
