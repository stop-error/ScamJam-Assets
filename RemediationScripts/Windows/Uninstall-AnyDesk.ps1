&"${env:ProgramFiles(x86)}\AnyDesk\AnyDesk.exe" "--remove"

while (!("${env:ProgramFiles(x86)}\AnyDesk\AnyDesk__Remove*.exe")) {

    Start-Sleep -Seconds 5

}

Get-Process "AnyDesk" | Stop-Process
Remove-Item "${env:ProgramFiles(x86)}\AnyDesk" -Recurse -Force