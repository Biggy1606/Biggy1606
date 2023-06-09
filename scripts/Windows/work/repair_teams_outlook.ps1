Import-Module Appx
Add-AppxPackage -Register "C:\Windows\SystemApps\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy\Appxmanifest.xml" -DisableDevelopmentMode -ForceApplicationShutdown
Get-AppxPackage -Name "Microsoft.AAD.BrokerPlugin"
Write-Output "Re-login Outlook and Teams manually"
