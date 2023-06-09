Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation' -Name DynamicDaylightTimeDisabled -Value 0
#Set-TimeZone -Auto
Restart-Service W32Time
#Set-Time -Force