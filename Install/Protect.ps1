Get-NetAdapter
Get-DnsClientServerAddress -InterfaceAlias "<AdapterName>"
Set-DnsClientServerAddress -InterfaceAlias "<AdapterName>" -ServerAddresses ("<DNS_IP>","1.1.1.1")

# Enable the built-in Administrator account
net user Administrator /active:yes

# Set a password for it
net user Administrator "$YourPasswordHere"

# Switch
runas /user:"$Administrator" powershell

# same
whoami

# Delete user from Admin
net localgroup Administrators "$username" /delete




