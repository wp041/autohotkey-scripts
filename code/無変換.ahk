#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 無変換.ahk
; 概要：無変換キーを用いた様々な入力を行う

~vk1D & h::Send, {Blind}{Left}
~vk1D & j::Send, {Blind}{Down}
~vk1D & k::Send, {Blind}{Up}
~vk1D & l::Send, {Blind}{Right}

~vk1D & n::Send, {Blind}{Home}
~vk1D & m::Send, {Blind}{PgDn}
~vk1D & ,::Send, {Blind}{PgUp}
~vk1D & .::Send, {Blind}{End}

~vk1D & p::Send, {Blind}{Delete}

~vk1D & 1::Send, {Blind}{F1}
~vk1D & 2::Send, {Blind}{F2}
~vk1D & 3::Send, {Blind}{F3}
~vk1D & 4::Send, {Blind}{F4}
~vk1D & 5::Send, {Blind}{F5}
~vk1D & 6::Send, {Blind}{F6}
~vk1D & 7::Send, {Blind}{F7}
~vk1D & 8::Send, {Blind}{F8}
~vk1D & 9::Send, {Blind}{F9}
~vk1D & 0::Send, {Blind}{F10}
~vk1D & -::Send, {Blind}{F11}
~vk1D & ^::Send, {Blind}{F12}
