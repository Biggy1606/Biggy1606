Function Test-ADAuthentication2 {
    param($username, $password)
    $domain = "ad-domain"
    $context = [System.DirectoryServices.AccountManagement.ContextType]::Domain
    $pc = new-object System.DirectoryServices.AccountManagement.PrincipalContext $context, $domain
    $pc.ValidateCredentials($username, $password)
}
while (1) {
    $login_result = (Test-ADAuthentication2 "login" "bad-password")
        Write-Output "[$(Get-Date)]: $($login_result)"
    Start-Sleep -Seconds 3
}