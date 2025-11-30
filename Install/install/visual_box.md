# Oracle Visual Box

* [URL](https://www.virtualbox.org/wiki/Downloads)

# AMD-V(CPU visualization)
* Advanced → CPU Configuration
* Advanced → System Configuration
* SVM Mode（Secure Virtual Machine Mode）


**Proxy Server**

* setup when you can not directly connect to the internet
```
http://proxy.example.com:8080
```

**NAT(Port Forwarding)**


### Powershell

```powershell
Get-ChildItem -Path "D:\" -Filter "VBoxManage.exe" -Recurse -ErrorAction SilentlyContinue | Select-Object FullName

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";D:\Oracle\", [System.EnvironmentVariableTarget]::User)
```


1. Virtual Box -> Setting → Network → adopter 1
2. 
    * Bridge Adopter 
    * NAT (Network Address Translation): VM cannot communicate each other. Assign the same IP with host PC

3. Select host PC Physical NIC(Wi-Fi or Ethernet)
    * Cable Connected: Emulate whether physical cable is connected or not
    * Promiscuous Mode: 無差別モード, Deny is OK

### In Ubuntu Server

```bash
sudo apt update && sudo apt upgrade

VBoxManage list vms
$Vmname = "Ubuntu Server"
# If host OS time and VM time differs more than 1000ms, fix it.
VBoxManage guestproperty set "$VMname" "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold" 1000
```