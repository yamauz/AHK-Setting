#IfWinActive, oxygen.ahk
    ~^s::
        MsgBox reloaded!
        Reload
    return
    return

    #IfWinActive, ahk_exe OxygenNotIncluded.exe 
    vk1D & 1::
        Send, {F1}
    return
    vk1D & 2::
        Send, {F2}
    return
    vk1D & 3::
        Send, {F3}
    return
    vk1D & 4::
        Send, {F5}
    return
    vk1D & q::
        Send, {F6}
    return
    vk1D & w::
        Send, {F7}
    return
    vk1D & e::
        Send, {F9}
    return
    vk1D & r::
        Send, {F11}
    return
    vk1D & a::
        Send,1
        MouseMove, 120, 900,0
    return
    vk1D & s::
        Send,2
        MouseMove, 120, 900,0
    return
    vk1D & d::
        Send,3
        MouseMove, 120, 900,0
    return
    vk1D & f::
        Send,4
        MouseMove, 120, 900,0
    return
    vk1D & c::
        Send, p9
    return
    Return

    #IfWinNotActive, ahk_exe OxygenNotIncluded.exe 
        vk1D & n:: WinActivate ,ahk_exe OxygenNotIncluded.exe
    Return

    #IfWinExist, Ahk_exe Code.exe 
    Return
#IfWinNotExist, Ahk_exe Code.exe 
    Return