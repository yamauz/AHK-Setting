#IfWinActive, vscode_workspace.ahk 
    ~^s::
        MsgBox reloaded
        Reload
    return
    
    #IfWinNotActive, ahk_exe 
    vk1D & 1:: 
        SetTitleMatchMode,2
        WinActivate ,action (ワークスペース) 
    return
    vk1D & 2:: 
        SetTitleMatchMode,2
        WinActivate ,main (ワークスペース) 
    return
    vk1D & 3:: 
        SetTitleMatchMode,2
        WinActivate ,side (ワークスペース) 
    return
    vk1D & 4:: 
        SetTitleMatchMode,2
        WinActivate ,detail (ワークスペース) 
    return
    vk1D & 5:: 
        SetTitleMatchMode,2
        WinActivate ,react-web-tabs (ワークスペース) 
    return
    vk1D & 6:: 
        SetTitleMatchMode,2
        WinActivate ,common (ワークスペース) 
    return
    vk1D & F1:: 
        SetTitleMatchMode,2
        WinActivate ,mainProcess (ワークスペース) 
    return
    vk1D & a:: 
        SetTitleMatchMode,2
        WinActivate ,keyboard-settings (ワークスペース) 
    return
    vk1D & w:: 
        SetTitleMatchMode,2
        WinActivate ,markdown (ワークスペース) 
    return
    vk1D & s:: 
        SetTitleMatchMode,2
        WinActivate ,terminal (ワークスペース) 
        send ^c
        sleep, 500
        send y{enter}
        sleep, 500
        send yarn dev
        send {enter}
    return
    vk1D & 0:: 
        SetTitleMatchMode,3
        WinActivate ,Pastify
            return
    vk1D & -:: 
        SetTitleMatchMode,1
        WinActivate ,Developer Tools
    return
    
    