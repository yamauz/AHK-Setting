#IfWinActive, vscode_workspace.ahk 
    ~^s::
        MsgBox reloaded
        Reload
    return

    #IfWinNotActive, ahk_exe 
    vk1D & 1:: 
        SetTitleMatchMode,2
        WinActivate ,redux (Workspace) 
    return
    vk1D & 2:: 
        SetTitleMatchMode,2
        WinActivate ,renderer (Workspace) 
    return
    vk1D & 3:: 
        SetTitleMatchMode,2
        WinActivate ,modal (Workspace) 
    return
    vk1D & 4:: 
        SetTitleMatchMode,2
        WinActivate ,list (Workspace) 
    return
    vk1D & 5:: 
        SetTitleMatchMode,2
        WinActivate ,content (Workspace) 
    return
    vk1D & 6:: 
        SetTitleMatchMode,2
        WinActivate ,common (Workspace) 
    return
    vk1D & F1:: 
        SetTitleMatchMode,2
        WinActivate ,mainProcess (Workspace) 
    return
    vk1D & F2:: 
        SetTitleMatchMode,2
        WinActivate ,config (Workspace) 
    return
    vk1D & 0:: 
        SetTitleMatchMode,3
        WinActivate ,Pastify
    return
    vk1D & -:: 
        SetTitleMatchMode,1
        WinActivate ,Developer Tools
    return

    #IfWinActive, hello.cpp 
    ~^+s::
        send ^+b
    return

    #IfWinActive, ● hello.cpp 
    ~^+s::
        send ^+b
    return