
## NTP

```powershell
w32tm /query /status
w32tm /query /configuration

net stop w32time
net start w32time
w32tm /resync
```