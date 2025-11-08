$max = 12
for ($i = 1; $i -le $max; $i++) {
    $t = Get-Date -Format 'HH:mm:ss'
    try {
        $r = Invoke-WebRequest -Uri 'https://RodrigoPv88.github.io/Site-Sophia/' -Method Head -UseBasicParsing -ErrorAction Stop
        Write-Output "$t - Attempt $i - Status: $($r.StatusCode)"
        exit 0
    } catch {
        Write-Output "$t - Attempt $i - No response"
        Start-Sleep -Seconds 15
    }
}
Write-Output "Not available after $max attempts."