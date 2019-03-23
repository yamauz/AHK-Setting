#IfWinActive, chrome.ahk
~^s::
  MsgBox reloaded!
  Reload
  return
return

; #IfWinActive, ahk_class Chrome_WidgetWin_1 
#IfWinActive, ahk_exe chrome.exe 
; move to left tab
vk1D & h::
  send ^{PgUp}
  return
; move to right tab
vk1D & l::
  send ^{PgDn}
  return
vk1D & u::
  send !d
  send ^c
  send p{Enter}
  return
vk1C & g::
  run "https://github.com/yamauz"
  return
Return

#IfWinNotActive, ahk_exe chrome.exe 
vk1D & c:: WinActivate ,ahk_exe chrome.exe
Return

#IfWinExist, Ahk_exe Code.exe 
Return
#IfWinNotExist, Ahk_exe Code.exe 
Return