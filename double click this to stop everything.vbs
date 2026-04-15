Set shell = CreateObject("WScript.Shell")
' Kill all running scripts and popup boxes
shell.Run "taskkill /f /im wscript.exe", 0, True
shell.Run "taskkill /f /im msg.exe", 0, True

MsgBox "EMERGENCY STOP ACTIVATED. All threats removed.", 64, "System Recovery"