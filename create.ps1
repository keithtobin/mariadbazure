$DeploymentID = "1000"
$AppName = "teppertobi$DeploymentID"
$AppResourceGroupName = $AppName
$AppStorageccount = $AppName
$AppLocation = "WestUS"
$AppArmTemplate = "C:\1\dr\create.json"

Switch-AzureMode AzureResourceManager

New-AzureResourceGroup -Name $AppResourceGroupName -Location WestUS


$secureString = convertto-securestring "Cathy123@" -asplaintext -force

$mysqlAdminPass = convertto-securestring "rootpass" -asplaintext -force

New-AzureResourceGroupDeployment -Name $AppName -ResourceGroupName $AppResourceGroupName -TemplateFile $AppArmTemplate -adminUsername "keith" -adminPassword $secureString -newStorageAccountName $AppStorageccount -deploymentID $DeploymentID -mysqlAdminUsername root -mysqlAdminPassword $mysqlAdminPass