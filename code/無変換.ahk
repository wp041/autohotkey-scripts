#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 無変換.ahk
; 概要：無変換キーを用いた様々な入力を行う

vk1D & u::Send, {Blind}{BS}
vk1D & i::Send, {Blind}{Delete}

vk1D & h::Send, {Blind}{Left}
vk1D & j::Send, {Blind}{Down}
vk1D & k::Send, {Blind}{Up}
vk1D & l::Send, {Blind}{Right}

vk1D & n::Send, {Blind}{Home}
vk1D & m::Send, {Blind}{PgDn}
vk1D & ,::Send, {Blind}{PgUp}
vk1D & .::Send, {Blind}{End}

vk1D & q::Send, {Blind}{PrintScreen}
vk1D & w::Send, {Blind}{ScrollLock}
vk1D & e::Send, {Blind}{Pause}

vk1D & a::Send, {Blind}{Volume_Down}
vk1D & s::Send, {Blind}{Volume_Up}
vk1D & d::Send, {Blind}{Volume_Mute}

vk1D & z::Send, {Blind}{Media_Prev}
vk1D & x::Send, {Blind}{Media_Next}
vk1D & c::Send, {Blind}{Media_Play_Pause}

vk1D & Tab::Send, {Blind}{vkF0}

vk1D & 1::Send, {Blind}{F1}
vk1D & 2::Send, {Blind}{F2}
vk1D & 3::Send, {Blind}{F3}
vk1D & 4::Send, {Blind}{F4}
vk1D & 5::Send, {Blind}{F5}
vk1D & 6::Send, {Blind}{F6}
vk1D & 7::Send, {Blind}{F7}
vk1D & 8::Send, {Blind}{F8}
vk1D & 9::Send, {Blind}{F9}
vk1D & 0::Send, {Blind}{F10}
vk1D & -::Send, {Blind}{F11}
vk1D & ^::Send, {Blind}{F12}

; imeコントロールを行うため
vk1D::
  IME_SET(0)
  Return