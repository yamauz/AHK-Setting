vk1D & Space::
  send {BackSpace}
return
vk1D & vk1C::
  send {Enter}
return
#IfWinActive, AutoHotkeyU64.ahk
~^s::
  MsgBox reloaded
  Reload
  return
return
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InClude sub\vscode.ahk
#InClude sub\explore.ahk
#InClude sub\chrome.ahk
#InClude sub\kindle.ahk

; ~vk1D::Return                  ;無変換単独はそのまま素通し
; ~vk1C::Return                  ;変換単独はそのまま素通し

; Win + H
; #h::Send, Windows 
; Ctrl + J
; ^j::Send, My First Script 
; Alt + K
; !k::Send, Hello World     
; Shift + L
; +l::Send, Test            


; #IfWinNotActive, ahk_exe Explorer.EXE
; ~^s::
; MsgBox Script reloaded
; Reload
; Return

