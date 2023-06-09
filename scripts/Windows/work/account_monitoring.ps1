# Syntax: domain/username password
Function Test-ADAuthentication {
    param($username, $password)
    $null -ne (new-object directoryservices.directoryentry "", $username, $password).psbase.name
}
# Syntax: domain username password
Function Test-ADAuthentication2 {
    param($domain, $username, $password) 
    $context = [System.DirectoryServices.AccountManagement.ContextType]::Domain
    $pc = new-object System.DirectoryServices.AccountManagement.PrincipalContext $context, $domain
    $pc.ValidateCredentials($username, $password)
}
Clear-Host
# $Date = [DateTime]::Today.AddMinutes(-3)
$Date = (Get-Date).AddMinutes(-3)
$Date_file = $Date.ToString("ddMMyyy_HHmmss")
while (1) {
    $login_result = (Test-ADAuthentication2 "doamain.com" "login" "password")
    if (($login_result)) {
        Write-Output "[$(Get-Date)]: Login status: ($($login_result)) ErrorLOGGED"
        $outData = Get-ADComputer -Filter 'LastBadPasswordAttempt -ge $Date -or LastLogondate -ge $Date' -Properties * 
        Out-File -FilePath "./$Date_file.txt" -InputObject $outData -Encoding ascii
        Exit
    }
    else {
        Write-Output "[$(Get-Date)]: $($login_result)"
    }
    Start-Sleep -Seconds 4
}