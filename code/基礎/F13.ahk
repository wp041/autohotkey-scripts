#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; F13.ahk
; 概要：F13キー（change keyを用いてKANAに割り当てられている）を用いた様々な入力を行う

F13::Esc

F13 & m::Send, {Blind}{F1}
F13 & ,::Send, {Blind}{F2}
F13 & .::Send, {Blind}{F3}
F13 & j::Send, {Blind}{F4}
F13 & k::Send, {Blind}{F5}
F13 & l::Send, {Blind}{F6}
F13 & u::Send, {Blind}{F7}
F13 & i::Send, {Blind}{F8}
F13 & o::Send, {Blind}{F9}
F13 & /::Send, {Blind}{F10}
F13 & sc027::Send, {Blind}{F11}
F13 & p::Send, {Blind}{F12}