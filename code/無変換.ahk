#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 無変換.ahk
; 概要：無変換キーを用いた様々な入力を行う

~vk1D & h::Send, {Blind}{Home}
~vk1D & k::Send, {Blind}{PgUp}
~vk1D & j::Send, {Blind}{PgDn}
~vk1D & l::Send, {Blind}{End}
