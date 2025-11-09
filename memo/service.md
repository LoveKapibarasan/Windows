

1. SC 

```powershell
sc create "$Service_name" binPath= "C:\Program Files\MyApp\myapp.exe"
```


2. New Service(Powershell)

```powershell
New-Service -Name "$name" -BinaryPathName "C:\Path\to\app.exe" -DisplayName "$name"
```