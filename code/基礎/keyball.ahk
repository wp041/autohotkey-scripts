#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;-----------------------------------------------------------------------------
; keyball.ahk
; 概要：キーボール使用時の挙動を調整
; 拡張：keyball.ahkと違って、常に起動していていいもの

F20::Send, {Blind}{Media_Play_Pause}
F21::Send, {Blind}{Volume_Up}
F22::Send, {Blind}{Volume_Down}
F23::Send, {Blind}{Media_Next}
F24::Send, {Blind}{Media_Prev}