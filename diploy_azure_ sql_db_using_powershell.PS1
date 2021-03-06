$adminSqlLogin = "cloudadmin"
$password = Read-Host "Your username is 'cloudadmin'. Please enter a password for your Azure SQL Database server that meets the password requirements"
# Prompt for local IP address
$ipAddress = Read-Host "Disconnect your VPN, open PowerShell on your machine and run '(Invoke-WebRequest -Uri "https://ipinfo.io/ip").Content'. Please enter the value (include periods) next to 'Address': "
# Get resource group and location and random string
$resourceGroup = Get-AzResourceGroup | Where ResourceGroupName -like "learn-9e6ed48e-dd8e-4199-8777-aef0ea8c60b9"
$resourceGroupName = "learn-9e6ed48e-dd8e-4199-8777-aef0ea8c60b9"
$uniqueID = Get-Random -Minimum 100000 -Maximum 1000000
$storageAccountName = "mslearnsa"+$uniqueID
$location = $resourceGroup.Location
# The logical server name has to be unique in the system
$serverName = "aw-server$($uniqueID)"
