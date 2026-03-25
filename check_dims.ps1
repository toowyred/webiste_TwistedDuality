[void][System.Reflection.Assembly]::LoadWithPartialName('System.Drawing')
$dir = 'W:\Studio\My Logos\web\elements'
$files = Get-ChildItem $dir -Filter 'web-background*.png'
foreach ($f in $files) {
    $img = [System.Drawing.Image]::FromFile($f.FullName)
    Write-Host "$($f.Name) : $($img.Width) x $($img.Height)"
    $img.Dispose()
}
