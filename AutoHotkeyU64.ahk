; --------------example
; Win + H
; #h::Send, Windows 
; Ctrl + J
; ^j::Send, My First Script 
; Alt + K
; !k::Send, Hello World     
; Shift + L
; +l::Send, Test            

; Backspace
vk1D & Space::
    send {BackSpace}
return
; Enter
vk1D & vk1C::
    If GetKeyState("Ctrl", "P")
        send ^{Enter}
    Else
        send {Enter}
Return
; move to left tab
vk1D & ,::
    send ^{PgUp}
return
; move to right tab
vk1D & .::
    send ^{PgDn}
return

#IfWinActive, AutoHotkeyU64.ahk
~^s::
    MsgBox reloaded
    Reload
return
return

; prohibit enter and backspace key
Enter::
return
BackSpace::
return

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include .\IME.ahk
#InClude sub\vscode.ahk
#InClude sub\vscode_workspace.ahk
#InClude sub\explore.ahk
#InClude sub\chrome.ahk
#InClude sub\kindle.ahk
#InClude sub\powershell.ahk
#InClude sub\fluent-terminal.ahk
#InClude sub\git.ahk

; #IfWinNotActive, ahk_exe Explorer.EXE
; ~^s::
; MsgBox Script reloaded
; Reload
; Return

