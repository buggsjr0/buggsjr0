<#
.SYNOPSIS
    This PowerShell script ensures that the Remote Desktop Services must always prompt a client for passwords upon connection.

.NOTES
    Author          : Jr Buggs 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-03-23
    Last Modified   : 2026-03-23
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

If Remote Desktop allows saved passwords:

* Anyone with access to that client machine could **connect to another system without knowing the password**
* Malware could abuse stored credentials to **move laterally across a network**
* It increases the risk of **unauthorized access to sensitive systems**

This STIG protects against:

* Credential theft
* Unauthorized remote access
* Insider threats

### Real-world scenario:

An administrator logs into a server using Remote Desktop and checks the “Remember me” option.

Later:

* That admin leaves their workstation unlocked
* Another employee (or attacker) sits down
* They open Remote Desktop…

**Instant access to the server — no password required**

From there, the attacker could:

* Steal sensitive data
* Install malware
* Create backdoor accounts
* Move deeper into the network
#>

#> Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000110).ps1 
    #>
---


Run this command:

```Powershell
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" `
  -Name "fPromptForPassword" -Value 1 -PropertyType DWord -Force
```

---

