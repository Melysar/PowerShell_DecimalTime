while ($true)
{
    Clear-Host
    $date = Get-Date
    Write-Host "$($date.Hour):$($date.Minute):$($date.Millisecond)"
    $currentTimeInSeconds = ($date.Hour * 3600) + ($date.Minute * 60) + $date.Second + ($date.Millisecond / 1000)
    write-host $currentTimeInSeconds
    $currentTimeInDecimal = $currentTimeInSeconds / 86.4
    $currentTimeInDecimal = [math]::Round($currentTimeInDecimal,2)
    $decimalDayPercentage = $currentTimeInDecimal / 10

    Write-Host "Current Decimal Time: ${currentTimeInDecimal} / 1000"
    Write-Host "${decimalDayPercentage}% of Day Complete"
    Start-Sleep -Milliseconds 250
}