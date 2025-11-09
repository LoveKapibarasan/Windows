
# gpasswd, usermod = net
# Enable the built-in Administrator account
net user Administrator /active:yes

# Set a password for it
net user Administrator "$YourPasswordHere"

# su = runas
runas /user: Administrator powershell

# same
whoami

# Delete user from Admin
net localgroup Administrators "$env:USERNAME" /delete
net localgroup Administrators "$env:USERNAME" /add

# Allow to run a script
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# No way to forbit safe boot -> Remove user from Administrator
# Boot Configuration Data edit (temporary)
bcdedit /deletevalue safeboot


