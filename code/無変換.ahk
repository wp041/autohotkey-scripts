#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 無変換.ahk
; 概要：無変換キーを用いた様々な入力を行う

~vk1D & h::Send, {Blind}{Left}
~vk1D & k::Send, {Blind}{Up}
~vk1D & j::Send, {Blind}{Down}
~vk1D & l::Send, {Blind}{Right}

~vk1D & a::Send, {Blind}{Home}
~vk1D & s::Send, {Blind}{PgUp}
~vk1D & d::Send, {Blind}{PgDn}
~vk1D & f::Send, {Blind}{End}

~vk1D & o::Send, {Blind}{BS}
~vk1D & p::Send, {Blind}{Delete}
