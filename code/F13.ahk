#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; F13.ahk
; 概要：F13キー（change keyを用いてKANAに割り当てられている）を用いた様々な入力を行う

F13::Esc

F13 & u::Send, {Blind}{PrintScreen}
F13 & i::Send, {Blind}{ScrollLock}
F13 & o::Send, {Blind}{Pause}

F13 & j::Send, {Blind}{Volume_Down}
F13 & k::Send, {Blind}{Volume_Up}
F13 & l::Send, {Blind}{Volume_Mute}

F13 & m::Send, {Blind}{Media_Prev}
F13 & ,::Send, {Blind}{Media_Next}
F13 & .::Send, {Blind}{Media_Play_Pause}