#IfWinActive, powershell.ahk - Visual Studio Code 
~^s::
  MsgBox reloaded
  Reload
  return

#IfWinActive, ahk_exe powershell.exe
vk1D & q:: 
  WinClose ,ahk_exe powershell.exe
  return
Return

#IfWinNotActive, ahk_exe powershell.exe
vk1D & p:: 
  WinActivate ,ahk_exe powershell.exe
  return
Return

#IfWinExist, ahk_exe powershell.exe
Return
#IfWinNotExist, ahk_exe powershell.exe
Return