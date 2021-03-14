#IfWinActive, vscode.ahk 
    ~^s::
        MsgBox reloaded
        Reload
    return
    #IfWinActive, Ahk_exe Code.exe 

    vk1D & c::
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; delete selection
            send !c 
    Return
    vk1D & d::
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; delete selection
            send gnc 
    Return
    vk1D & f::
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; find JSX Attribute
            send !f
    Return
    vk1D & e::
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; find JSX Attribute
            send /
            send \w{+}=["{{}].*?["{}}\r]
            send {enter}
    Return
    vk1D & h::
        If GetKeyState("Ctrl", "P")
            send !{Left}
        Else
            ; snippet: brakets1;
            send !h
    Return
    vk1D & j::
        If GetKeyState("Ctrl", "P")
            ; snippet: template literal;
            send !^j
        Else
            ; snippet: double quotation;
            send !j
    Return
    vk1D & k::
        If GetKeyState("Ctrl", "P")
            send !{Right}
        Else
            send ^{space}
        sleep, 200
        send {enter}
    Return
    vk1D & l::
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; snippet: console.log
            ; send !l
            send {tab}
    Return
    vk1D & p::
        If GetKeyState("Ctrl", "P")
            return
        Else
            send !p 
    Return
    vk1D & q::
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; find function literal
            send /
            send const [A-Z].=?
            send {enter}
    Return
    vk1D & r::
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; find jsx tag
            send /
            send \s<[A-Z]
            send {enter}
    Return
    vk1D & w::
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; find JSX Value
            send /
            send (".{+}?"|{{}.{+}?{}}})
            send {enter}
    Return
    vk1D & sc028:: ; semi
        If GetKeyState("Ctrl", "P")
            return
        Else
            send !: 
    Return
    vk1D & `;:: ; colon
        If GetKeyState("Ctrl", "P")
            return
        Else
            ; console.log()
            send !l 
    Return

    return
    vk1C & j::
    return
    ; focus to git panel
    vk1C & g::
        send +^g
    return
    ; focus to Editor 
    vk1C & k::
        send ^e
    return
    ; escape 
    vk1C & e::
        send {Esc} 
    return
    ; open .ahk file


    ; editor tab / group move ---------------------------------------------
    vk1D & ,::
        If GetKeyState("Shift", "P")
            ; move to previoud editor group
        send +^{PgUp}
        Else
            ; move to previoud tab
        send ^{PgUp}
    Return
    vk1D & .::
        If GetKeyState("Shift", "P")
            ; move to previoud editor group
        send +^{PgDn}
        Else
            ; move to previoud tab
        send ^{PgDn}
    Return

    ; easy motion  ---------------------------------------------
    vk1C & .::
        send {Space}{Space}s>
    return
    vk1C & `;::
    send {Space}{Space}s;
    return
    vk1C & sc035:: ; slash
        send {Space}{Space}s)
    return
    vk1C & sc028:: ; colon
    send {Space}{Space}s{}}
    return
    vk1C & @:: ; @ mark
        send {Space}{Space}{Space}bdjk
    return

    ; find #  ---------------------------------------------
    vk1C & n:: 
        send ^c/{#}{#}{Enter}
    return
    ; find "  ---------------------------------------------
    vk1C & s:: 
        send {Space}{Space}s"
    return
    ; delete content  -------------------------------------
    vk1C & d:: 
        Input, char, L1 
        ; delete content of ""  
        if char = D 
        {
            send ci"
            return
        }
        ; delete content of {}
        if char = C 
        {
            send ci{{}
            return
        }
        ; delete content of ()  
        if char = A 
        {
            send ci)
            return
        }
    return
    ; comment content  -------------------------------------
    vk1C & c:: 
        Input, char, L1 
        ; comment content of {}
        if char = C 
        {
            send vi{{}^{sc035}
            return
        }
        ; comment content of ()  
        if char = A 
        {
            send vi)^{sc035}
            return
        }
    return

    #IfWinActive, Ahk_exe Code.exe 
    ~^c::
        DetectHiddenWindows, ON
        WinGet, vcurrentwindow, ID, A
        vgetdefault := DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint", vcurrentwindow)
        vimestate := DllCall("user32.dll\SendMessageA", "UInt", vgetdefault, "UInt", 0x0283, "Int", 0x0005, "Int", 0)
        DetectHiddenWindows, Off

        If (vimestate!=0) {
            Send, {vkf3}
        }
    return
    return

    #IfWinNotActive, Ahk_exe Code.exe
    Return

    #IfWinExist, Ahk_exe Code.exe 
    Return
#IfWinNotExist, Ahk_exe Code.exe 
    Return

IMEGetstate:
return