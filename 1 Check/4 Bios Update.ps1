    If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator"))
    {Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
    Exit}
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + " (Administrator)"
    $Host.UI.RawUI.BackgroundColor = "Black"
	$Host.PrivateData.ProgressBackgroundColor = "Black"
    $Host.PrivateData.ProgressForegroundColor = "White"
    Clear-Host

# get motherboard id
$instanceID = (Get-CimInstance Win32_BaseBoard).Product
$query = [uri]::EscapeDataString($instanceID)
# search motherboard id in web browser
<<<<<<< HEAD
Start-Process "https://www.google.com/search?q=$query"
=======
Start-Process "https://www.google.com/search?q=$query"
>>>>>>> bdc8b9c58ba89fa363bbfdac589910b3a3d3bf56
