#Set-TimeZone -Manual
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation' -Name DynamicDaylightTimeDisabled -Value 1
#Disable-WindowsOptionalFeature -Online -FeatureName "windowsTime"
#$actualDate = Get-Date
Set-Date -Date "05.05.2023"
Start-Process "PathToProgram u want to run" -LoadUserProfile