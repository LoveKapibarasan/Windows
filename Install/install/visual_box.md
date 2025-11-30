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

**Shared Folder**
* Auto mount
* Permanent
```bash
# Packages 
sudo apt install build-essential dkms linux-headers-$(uname -r) -y
sudo apt install virtualbox-guest-x11 -y
sudo apt install virtualbox-guest-additions-iso virtualbox-guest-utils -y
```

### In Ubuntu Server

```bash
sudo apt update && sudo apt upgrade
```

### From Outside

```powershell
VBoxManage list vms
$VMname = "Ubuntu Server"
# If host OS time and VM time differs more than 1000ms, fix it.
VBoxManage guestproperty set "$VMname" "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold" 1000

VBoxManage modifyvm "$VMname" --autostart-enabled on

# Add  Task schedulet
## Trigger At System Startup
## C:\Program Files\Oracle\VirtualBox\VBoxManage.exe
## Arguments: startvm "$VMname" --type headless
```

### Memo
```bash
sudo tcpdump -i $interface port 53 -nnv

sudo iptables -t nat -L -n -v
sudo iptables -L -n -v
```


### Mechanism
1. Host PC(A:xxxxx)
```
Sender: A:xxxxx
Destination: 10.10.0.1:53 (AWS)
```

2. AWS(10.10.0.2)
```
Sender: A:xxxx -> 10.10.0.1:xxxxx (SNAT by AWS)
Destination: 10.10.0.1:53 -> 10.10.0.2:53 (DNAT by AWS)
> Original information is managed by conntrack(NAT table)
```

3. 10.10.0.2 (DNS server)
* solve IP address
```
Sender: 10.10.0.2:nn
Destination: 10.10.0.1:53 (AWS)
```

4. AWS
* Restore
```
Sender: 10.10.0.1:53 (AWS)
Destination: A:xxxxx
```

**Remote Desktop**
* Pro version only.
* System -> Remote desktop