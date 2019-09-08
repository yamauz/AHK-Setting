#IfWinActive, vscode.ahk 
    ~^s::
        MsgBox reloaded
        Reload
    return
    #IfWinActive, Ahk_exe Code.exe 
        ; open snippents and enter
    vk1D & k::
        send ^{space}
        sleep, 200
        send {enter}
    return
    ; tab
    vk1D & l::
        send {tab}
    return
    ; focus to explorer
    vk1C & j::
        send +^e
    return
    ; focus to git panel
    vk1C & g::
        send +^g
    return
    ; focus to Editor 
    vk1C & k::
        send ^e
    return
    ; focus to Terminal 
    vk1C & l::
        send ^t
    return
    ; escape 
    vk1C & e::
        send {Esc} 
    return
    
    ; open .ahk file
    vk1C & o::
        Input, char, L1 
        ; directory 
        if char = V 
        {
            run, "sub\vscode.ahk"
            return
        }
        ; text
        if char = A 
        {
            run, "AutoHotkeyU64.ahk"
            return
        }
        ; javascript
        if char = C 
        {
            run, "sub\chrome.ahk"
            return
        }
        if char = E 
        {
            run, "sub\explore.ahk"
            return
        }
        if char = K 
        {
            run, "C:\Users\Yarman\AppData\Roaming\Code\User\keybindings.json"
            return
        }
        if char = S 
        {
            run, "C:\Users\Yarman\AppData\Roaming\Code\User\settings.json"
            return
        }
    Return
    
    #IfWinActive, Ahk_exe Code.exe 
    ~^c::
        DetectHiddenWindows, ON
        WinGet, vcurrentwindow, ID, A
        vgetdefault := DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint", vcurrentwindow)
        vimestate   := DllCall("user32.dll\SendMessageA", "UInt", vgetdefault, "UInt", 0x0283, "Int", 0x0005, "Int", 0)
        DetectHiddenWindows, Off
        
        If (vimestate!=0) {
            Send, {vkf3}
        }
    return
    return
    
    #IfWinNotActive, Ahk_exe Code.exe
        vk1D & v:: WinActivate ,Ahk_exe Code.exe
    Return
    
    #IfWinExist, Ahk_exe Code.exe 
    Return
#IfWinNotExist, Ahk_exe Code.exe 
    Return

IMEGetstate:
return