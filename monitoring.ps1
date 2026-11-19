Get-CimAssociatedInstance Win32_OperatingSystem | Select-Object @{Name="Total Physical Memory"; Expression={$_.TotalPhysicalMemory / 1GB}}, @{Name="Used Physical Memory"; Expression={($_.TotalPhysicalMemory - $_.FreePhysicalMemory) / 1GB}}
Get-Service | Where-Object {$_.Status -eq "Stopped" -and $_.StartType -eq "Automatic"}
Write-Output "System Errors Today:"
Get-WinEvent -LogName System | Where-Object {$_.LevelDisplayName -eq "Error" -and $_.TimeCreated -gt [DateTime]::Today}
