Add-Type -AssemblyName System.Windows.Forms
Write-Host "Auto-Jiggler execution started. Please hit Ctrl. + C to stop the execution."
while($true) {
    $pos = [System.Windows.Forms.Cursor]::Position
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X + 1), $pos.Y)
    Start-Sleep -Milliseconds 100
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X), $pos.Y)
    Write-Host "Jiggled at $(Get-Date -Format 'HH:mm:ss')"
    Start-Sleep -Seconds 60
}