#IfWinActive, chrome.ahk
    ~^s::
        MsgBox reloaded!
        Reload
    return
    return
    
    #IfWinActive, ahk_exe chrome.exe 
    vk1C & j::
        send d 
    return
    vk1C & k::
        send u 
    return
    vk1C & b::
        send +!b 
    return
    vk1C & g::
        run "https://github.com/yamauz"
    return
    Return
    
    #IfWinNotActive, ahk_exe chrome.exe 
    F13 & c:: 
        WinActivate ,ahk_exe chrome.exe
    return
    Return
    
    #IfWinExist, Ahk_exe Code.exe 
    Return
#IfWinNotExist, Ahk_exe Code.exe 
    Return