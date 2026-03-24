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


### 🔐 WN11-CC-000280 — Remote Desktop must always prompt for a password

---


## 🧠 What this STIG means

This rule requires that **Remote Desktop connections always ask the user to enter their password**, even if credentials were saved previously.

👉 In other words:
No auto-login. No saved credentials. Always authenticate manually.

---

## 🚨 Why this matters

If Remote Desktop allows saved passwords:

* Anyone with access to that client machine could **connect to another system without knowing the password**
* Malware could abuse stored credentials to **move laterally across a network**
* It increases the risk of **unauthorized access to sensitive systems**

This STIG protects against:

* Credential theft
* Unauthorized remote access
* Insider threats

---

## 🔍 How to check compliance (Step-by-step)

### Method 1: Group Policy Editor

1. Press `Win + R`, type:

   ```
   gpedit.msc
   ```

2. Navigate to:

   ```
   Computer Configuration →
   Administrative Templates →
   Windows Components →
   Remote Desktop Services →
   Remote Desktop Session Host →
   Security
   ```

3. Find:
   **“Always prompt for password upon connection”**

4. Verify it is set to:

   ```
   Enabled
   ```

---

### Method 2: Registry Check

1. Open Command Prompt or PowerShell

2. Run:

   ```powershell
   reg query HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services /v fPromptForPassword
   ```

3. Confirm:

   ```
   fPromptForPassword = 1
   ```

---

## 🛠️ How to fix it (Remediation)

### Option 1: Group Policy (Recommended)

1. Open `gpedit.msc`
2. Go to the same path:

   ```
   Computer Configuration →
   Administrative Templates →
   Windows Components →
   Remote Desktop Services →
   Remote Desktop Session Host →
   Security
   ```
3. Double-click:
   **“Always prompt for password upon connection”**
4. Set it to:

   ```
   Enabled
   ```
5. Click **Apply → OK**

---

### Option 2: PowerShell / Registry Fix

Run this command:

```powershell
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" `
  -Name "fPromptForPassword" -Value 1 -PropertyType DWord -Force
```

---

## ⚠️ What could happen if this is NOT implemented

### Real-world scenario:

An administrator logs into a server using Remote Desktop and checks the “Remember me” option.

Later:

* That admin leaves their workstation unlocked
* Another employee (or attacker) sits down
* They open Remote Desktop…

💥 **Instant access to the server — no password required**

From there, the attacker could:

* Steal sensitive data
* Install malware
* Create backdoor accounts
* Move deeper into the network

---

## 💡 Key takeaway

This STIG enforces a simple but powerful rule:

> **Every Remote Desktop session must require fresh authentication.**

It ensures that **access is always intentional and verified**, not automatic.

---

