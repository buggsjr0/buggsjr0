 <#
.SYNOPSIS
    This PowerShell script ensures that users must be prompted for a password on resume from sleep (on battery)
.NOTES
    Author          : Jr Buggs
    LinkedIn        : 
    GitHub          : github.com/buggsjr0
    Date Created    : 2026-04-14
    Last Modified   : 2026-04-14
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000145

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
Why this matters

If this setting is disabled, anyone could:

Open a sleeping laptop
Wake it up
Instantly access files, email, or sensitive systems

This is especially dangerous for:

Lost or stolen laptops
Devices used in public places (airports, coffee shops, etc.)

This STIG protects against unauthorized physical access.

Real-world scenario:

An employee at a government agency is working in an airport lounge. They close their laptop, which goes to sleep.

The device does NOT require a password on wake
The employee steps away for a few minutes
Someone opens the laptop and wakes it up

Instant access to:

Sensitive emails
Internal systems
Confidential documents

This could lead to:

Data theft
Credential compromise
A full security breach

PS C:\> .\STIG-ID-WN11-CC-000145.ps1 
#>
Run the following script:

powercfg /SETDCVALUEINDEX SCHEME_CURRENT SUB_NONE CONSOLELOCK 1
powercfg /SETACTIVE SCHEME_CURRENT

SETDCVALUEINDEX = applies to battery mode
CONSOLELOCK 1 = require password
