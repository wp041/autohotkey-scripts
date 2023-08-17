#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#UseHook
; --------------------------------------------------
; CLIPStudioPaint
; --------------------------------------------------
#IfWinActive, ahk_exe CLIPStudioPaint.exe

1::^@
2::
3::p
4::m

F1::^@
F8::^@

-::Enter
RAlt::Enter

#IfWinActive