#IfWinActive, fluent-terminal.ahk 
    ~^s::
        MsgBox reloaded
        Reload
    return
    
    #IfWinActive, ahk_exe powershell.exe
    Return
    
    #IfWinNotActive, pastify ‎- Fluent Terminal
    vk1D & f:: 
        WinActivate ,pastify ‎- Fluent Terminal
            return
    Return
    