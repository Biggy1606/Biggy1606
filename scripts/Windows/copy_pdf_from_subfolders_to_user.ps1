Write-Host "Searching .pdf files in '$(Get-Location)'. Please wait..."
$size = 0
$files = Get-ChildItem -File -Depth 99 *.pdf
$files | ForEach-Object { 
    $size += $($_.Length / 1MB) 
}
Write-Host "Found files"
Write-Host "  Count: $($files.Count)"
Write-Host "  Size: $($size) MB"
Read-Host 'Continue? (Ctrl + C to stop)'
foreach ($item in $files) {
    mkdir -Force "$($HOME)\pdfs"
    Copy-Item $item.FullName "$($HOME)\pdfs"
}