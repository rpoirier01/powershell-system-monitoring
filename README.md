# PowerShell Windows Monitoring Script

## Features
This is a PowerShell script designed to capture critical system information including used RAM, stopped services and Error logs from today. 
This script will:
- Output total physical memory and used physical memory, though there is a current bug with the used memory output. 
- Output any stopped services that were automatically started at launch
- List any error logs that have occurred sometime today

### Usage
To run the script, simply run .\monitoring.ps1

These features would allow a system admin to quickly detect RAM spikes, detect if essential services were not running and quickly surface any recent errors for further investigation.
In the future, I may fix any bugs found in this script and set it to run at automatic times to increase visibility.

### References
This script was in part inspired by Gemini, and some code is based on Google Search AI and these sources:
https://eventlogxp.com/blog/improving-event-log-filtering-in-powershell/
https://superuser.com/questions/1448419/get-list-all-windows-event-log-events-in-the-last-n-minutes-in-powershell
