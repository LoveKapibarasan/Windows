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


1. Home
2. Pro
3. Education

1. OEM
    * DSP(Delivery Service Partner)
        * with PC parts
    * OA3(（OEM Activation 3.0）)
        * in BIOS
2. Volume Licence
    * Company
3. Package