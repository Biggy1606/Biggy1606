Write-Output "Keeps Screen ON"
Write-Output "Running... (press CTRL + C to stop or CLOSE WINDOW)"
$wsh = New-Object -ComObject WScript.Shell
while($true) {
    $wsh.SendKeys('{NUMLOCK}')
    Start-Sleep 300
}