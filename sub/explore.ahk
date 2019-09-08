#IfWinActive, explore.ahk
    ~^s::
        MsgBox reloaded
        Reload
    return
    return
    #IfWinActive, ahk_exe Explorer.EXE 
    vk1D & e:: 
        ControlFocus, DirectUIHWND3, A
        SendInput, {Space}
    return
    vk1D & j:: 
        Send, {Down}
    return
    vk1D & k:: 
        Send, {Up}
    return
    ; move to left tab
    vk1D & h::
        send ^{PgUp}
    return
    ; move to right tab
    vk1D & l::
        send ^{PgDn}
    return
    ; open powershell
    vk1D & p::
        send {Alt}fr
    return
    ; open directory with vscode
    vk1D & i::
        send {AppsKey}
        sleep,200
        send i{Enter}
    return
    vk1D & n::
        send {Alt}
        Input, char, L1 
        ; directory 
        if char = D 
        {
            send hn
            return
        }
        ; text
        if char = T 
        {
            send hw{Up}{Up}{Enter}
            return
        }
        ; javascript
        if char = J 
        {
            send hw{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}
            return
        }
    return
    vk1c & o::
        Input, char, L1 
        ; directory 
        if char = O 
        {
            send !+^{F1} 
            return
        }
        if char = D 
        {
            send !+^{F2} 
            return
        }
        if char = P 
        {
            send !+^{F4} 
            return
        }
        if char = X 
        {
            send !+^{F3} 
            return
        }
    return
    vk1c & f::
        send !s
        WinActivate ,powershell ‎- Fluent Terminal
        send ^a{delete}
        send pushd{space}
        send "
        send ^v
        send "
        send {enter}
    return
    Return
    
    #IfWinNotActive, ahk_exe Explorer.EXE 
    vk1D & e:: 
        WinActivate ,ahk_class CabinetWClass
        ControlFocus, DirectUIHWND3, A
        SendInput, {Space}
    return
    Return
    
    #IfWinExist, ahk_exe Explorer.EXE 
    return
Return
#IfWinNotExist, ahk_exe Explorer.EXE 
    ; vk1D & f:: MsgBox, hello2
; vk1D & f:: MsgBox, hello21
; vk1D & e:: run,Explorer.EXE
Return