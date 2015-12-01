$DeploymentID = "0002"
$AppName = "teppertobi$DeploymentID"
$AppResourceGroupName = $AppName
$AppStorageccount = $AppName
$AppDnsNameForPublicIP = $AppName
$AppLocation = "WestUS"
$AppArmTemplate = "C:\1\dr\create.json"

Switch-AzureMode AzureResourceManager

New-AzureResourceGroup -Name $AppResourceGroupName -Location WestUS


$secureString = convertto-securestring "Cathy123@" -asplaintext -force


New-AzureResourceGroupDeployment -Name $AppName -ResourceGroupName $AppResourceGroupName -TemplateFile $AppArmTemplate -adminUsername "keith" -adminPassword $secureString -newStorageAccountName $AppStorageccount -dnsNameForPublicIP $AppDnsNameForPublicIP -deploymentID $DeploymentID