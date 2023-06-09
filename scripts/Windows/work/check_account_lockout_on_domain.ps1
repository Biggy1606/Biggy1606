(Get-ADDomain).PDCEmulator
# Getting the PDC emulator DC
$pdc = (Get-ADDomain).PDCEmulator
# Creating filter criteria for events
#Login faiiled (on client)
$filterHash = @{LogName = "Security"; Id = 4625; StartTime = (Get-Date).AddDays(-2)}
#Account locked (on AD server)
$filterHash = @{LogName = "Security"; Id = 4740; StartTime = (Get-Date).AddDays(-1)}
# Getting lockout events from the PDC emulator
$lockoutEvents = Get-WinEvent -ComputerName $pdc -FilterHashTable $filterHash -ErrorAction SilentlyContinue
