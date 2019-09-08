#IfWinActive, fluent-terminal.ahk 
    ~^s::
        MsgBox reloaded
        Reload
    return
    
    #IfWinActive, ahk_exe powershell.exe
    Return
    
    #IfWinNotActive, powershell ‎- Fluent Terminal
    vk1D & f:: 
        WinActivate ,powershell ‎- Fluent Terminal
    return
    Return
    