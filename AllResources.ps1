#

$rg = 'arm-introd'
$deploymentName = Get-Date
$location = 'westeurope'
New-AzResourceGroup -Name -rg -Location $location -Force

New-AzResourceGroupDeployment `
    -Name $deploymentName.format("yyyy-MM-dd-HH-mm-ss") `
    -ResourceGroupName $rg `
    -TemplateFile 'AllResources.json' `
    -Location $location 