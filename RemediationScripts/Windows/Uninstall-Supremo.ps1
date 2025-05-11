#Delete Supremo Service
sc.exe stop SupremoService
sc.exe delete SupremoService

# Kill Supremo Process
Get-Process Supremo | ForEach-Object {Stop-Process $_ -Force}
Start-Sleep -Seconds 2

# Delete Supremo 
Remove-Item "${env:ProgramFiles(x86)}\Supremo" -Recurse -Force
