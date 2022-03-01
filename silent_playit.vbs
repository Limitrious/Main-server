Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "playit.exe" & Chr(34), 0
Set WshShell = Nothing