# Windows Product key commands
* [Ref 1](https://pc-jiten.com/post45269/)

`slmgr.vbs [Options]`

```powershell
slmgr /dli
# Detail
slmgr /dlv
# Print product key
powershell "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"
```

[Show Product Key](https://apps.microsoft.com/detail/9pkvzcprx9nv?hl=en-GB&gl=DE)