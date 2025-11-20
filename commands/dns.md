# DNS Commands
```powershell
nslookup domain
Resolve-DnsName domain
```


### Check DNS:
```powershell
ipconfig /all #  CMD
Get-DnsClientServerAddress
netsh interface ip set dns name="$($i.Name)" static $dns  
```

### Change DNS
```powershell
# CMD
netsh interface ipv4 set dns name="Wi-Fi" static 8.8.8.8
netsh interface ipv4 add dns name="Wi-Fi" 8.8.4.4 index=2
# Powershell
Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ServerAddresses ("8.8.8.8","8.8.4.4")
```

### Reset to Automatic:
```powershell
# CMD
netsh interface ipv4 set dns name="Wi-Fi" dhcp
# Powershell
Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ResetServerAddresses
```


### Services

1. **DNS Client Service** (`dnscache`)
   - Built-in Windows service that caches DNS queries
   - Similar role to systemd-resolved

2. **Network adapter DNS settings**
   - Configured via: Control Panel → Network Connections → Adapter Properties → TCP/IPv4
   - Or via PowerShell: `Get-DnsClientServerAddress`

3. **Registry entries** (equivalent to /etc/resolv.conf):
   - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters`
   - Not typically manually edited


### Disable DoH(DNS over HTTPS)
```powershell
# https://learn.microsoft.com/en-us/deployedge/microsoft-edge-browser-policies/dnsoverhttpsmode?utm_source=chatgpt.com
# Edge
reg add "HKLM\Software\Policies\Microsoft\Edge" /v DnsOverHttpsMode /t REG_SZ /d "off" /f

Get-DnsClientDohServerAddress | Remove-DnsClientDohServerAddress
Get-DNSClientDohServerAddress
```