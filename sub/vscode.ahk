#IfWinActive, vscode.ahk 
~^s::
  MsgBox reloaded
  Reload
  return
#IfWinActive, Ahk_exe Code.exe 
; open snippents and enter
vk1D & j::
  send ^{space}
  sleep, 100
  send {enter}
  return
; tab
vk1D & k::
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
  return
Return

#IfWinNotActive, Ahk_exe Code.exe 
vk1D & v:: WinActivate ,Ahk_exe Code.exe
Return

#IfWinExist, Ahk_exe Code.exe 
Return
#IfWinNotExist, Ahk_exe Code.exe 
Return