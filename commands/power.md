### Disable Sleep
```powershell

powercfg -change -standby-timeout-ac 0
```

### Power Off
ps: `Restart-Computer`
cmd: `shutdown /r /t 0`
