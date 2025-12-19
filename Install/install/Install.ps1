# Run in admin terminal
Remove-Item -Recurse -Force "C:\ProgramData\chocolatey"

# Allow the installation script from internet
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco search "$package"
# Install choco

PS C:\WINDOWS\system32> Test-Path "C:\ProgramData\chocolatey\bin\choco.exe"                                             >>                                                                                                                      False                                                                                                                   PS C:\WINDOWS\system32>
choco install git git-lfs intellijidea-community pycharm-community python dbeaver wireguard -y
choco install openssh docker-desktop tex-live wireshark R.Studio rust -y
choco install forticlientvpn nvm nodejs syncthing  -y
choco install kindle rufus -y

# Install Vim Extension(IntelliJ)

# Install npcap https://npcap.com

# HTMail
# https://microsoftedge.microsoft.com/addons/detail/htmail-insert-html-into-/fmolpbepkmdanohdmaglpnldhebfjkkd

# Office
# https://www.microsoft.com/en-us/microsoft-365/download-office

# Shogi dokoro
# https://shogidokoro2.stars.ne.jp/
icacls "C:\Program Files\Shogidokoro" /grant "Everyone:(F)" /T

# MikTex(Optimized for Windows)
# https://miktex.org/download

# =====
# Uninstall Microsoft store
Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage

$dns="1.1.1.1"
$interfaces = Get-NetAdapter | Where-Object {$_.Status -eq "Up"}
foreach ($i in $interfaces) {
     Write-Information "Setting DNS for interface: $($i.Name)"
     netsh interface ip set dns name="$($i.Name)" static $dns
}

# Rename hostname
Rename-Computer -NewName "pc" -Restart

# Allow to run script
Set-ExecutionPolicy RemoteSigned -Scope LocalMachine
