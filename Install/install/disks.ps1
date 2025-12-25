# Reformat partition
Get-Disk
Get-Partition -DriveLetter D
Format-Volume -DriveLetter D -FileSystem NTFS -NewFileSystemLabel "Data" -Confirm:$false

# Symbolik-Link
## End Task Before
Move-Item "$env:USERPROFILE\AppData\Local\Programs" "D:\Programs"
Remove-Item "$env:USERPROFILE\AppData\Local\Programs"
cmd /c mklink /D "$env:USERPROFILE\AppData\Local\Programs" "D:\Programs"
cmd /c dir "$env:USERPROFILE\AppData\Local" | findstr Programs

Move-Item "$env:USERPROFILE\AppData\Local\Python" "D:\Python"
cmd /c mklink /D "$env:USERPROFILE\AppData\Local\Python" "D:\Python"

Move-Item "$env:USERPROFILE\.ollama" "D:\.ollama"
cmd /c mklink /D "$env:USERPROFILE\.ollama" "D:\.ollama"

Move-Item "C:\Python310" "D:\Python310"
cmd /c mklink /D "C:\Python310" "D:\Python310"

Move-Item "C:\Program Files\Chromium" "D:\Chromium"
cmd /c mklink /D "C:\Program Files\Chromium" "D:\Chromium"

Move-Item "C:\Program Files\Docker" "D:\Docker"
cmd /c mklink /D "C:\Program Files\Docker" "D:\Docker"

Move-Item "C:\Program Files\WSL" "D:\WSL"
cmd /c mklink /D "C:\Program Files\WSL" "D:\WSL"

wsl --list --verbose
wsl --shutdown
wsl --export docker-desktop D:\WSL_Docker\docker-desktop-data.tar
wsl --unregister docker-desktop
wsl --import docker-desktop D:\WSL_Docker\docker-desktop-data D:\WSL_Docker\docker-desktop-data.tar --version 2
