#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

F16 & r::
    Reload
    Send, {Esc}
Return

F16 & /::
    WinActivate, ahk_exe chrome.exe
    CoordMode, Mouse, Relative
    MouseClick, L, 150, 20, 1, 0,
return
