#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

F16 & r::
    Reload
    Send, {Esc}
Return

