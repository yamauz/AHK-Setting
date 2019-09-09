#IfWinActive, git.ahk 
    ~^s::
        MsgBox reloaded
        Reload
    return
    
    #IfWinActive, ahk_exe GitHubDesktop.exe
    Return
    
    #IfWinNotActive,ahk_exe GitHubDesktop.exe 
    vk1D & g:: 
        WinActivate ,ahk_exe GitHubDesktop.exe
    return
    Return
    