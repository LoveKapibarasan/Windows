```powershell
Get-DnsClientServerAddress
netsh interface ip set dns name="$($i.Name)" static $dns  
```