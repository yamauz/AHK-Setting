#IfWinActive, kindle.ahk 
~^s::
  MsgBox reloaded
  Reload
  return
Return

#IfWinNotActive, ahk_exe Kindle.exe 
vk1D & k:: WinActivate ,ahk_exe Kindle.exe
Return

#IfWinExist, ahk_exe Kindle.exe 
Return
#IfWinNotExist, ahk_exe Kindle.exe 
Return