# Run in admin terminal
Remove-Item -Recurse -Force "C:\ProgramData\chocolatey"

# Allow the installation script from internet
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco search "$package"
# Install choco

PS C:\WINDOWS\system32> Test-Path "C:\ProgramData\chocolatey\bin\choco.exe"                                             >>                                                                                                                      False                                                                                                                   PS C:\WINDOWS\system32>
choco install git git-lfs intellijidea-community pycharm-community python -y
choco install openssh docker-desktop tex-live wireshark R.Studio rust dbevear -y
choco install forticlientvpn nvm nodejs imagemagick ghostscript  -y
choco install kindle rufus -y

# Install npcap https://npcap.com

# HTMail
# https://microsoftedge.microsoft.com/addons/detail/htmail-insert-html-into-/fmolpbepkmdanohdmaglpnldhebfjkkd

# Office
# https://www.microsoft.com/en-us/microsoft-365/download-office

# Shogi dokoro
# https://shogidokoro2.stars.ne.jp/
icacls "C:\Program Files (x86)\Shogidokoro" /grant "Everyone:(F)" /T

# =====
# Uninstall Microsoft store
Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage


# Rename hostname
Rename-Computer -NewName "pc" -Restart

