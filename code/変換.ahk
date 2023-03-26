#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 変換.ahk
; 概要：変換キーを用いた様々な入力を行う

vk1C & u::Send, {Blind}{Insert}

vk1C & i::Send, {Blind}{BS}
vk1C & o::Send, {Blind}{Delete}

vk1C & j::Send, {Blind}{Left}
vk1C & k::Send, {Blind}{Down}
vk1C & l::Send, {Blind}{Up}
vk1C & sc027::Send, {Blind}{Right}

vk1C & m::Send, {Blind}{Home}
vk1C & ,::Send, {Blind}{PgDn}
vk1C & .::Send, {Blind}{PgUp}
vk1C & /::Send, {Blind}{End}

vk1C & Tab::Send, {Blind}{vkF0}

vk1C & p::Send, {Blind}{PrintScreen}
vk1C & @::Send, {Blind}{ScrollLock}
vk1C & [::Send, {Blind}{Pause}

vk1C & sc028::Send, {Blind}{Volume_Down}
vk1C & ]::Send, {Blind}{Volume_Up}
vk1C & Enter::Send, {Blind}{Media_Play_Pause}

vk1C & vkE2::Send, {Blind}{Media_Prev}
vk1C & RShift::Send, {Blind}{Media_Next}

vk1C & z::Send, {Blind}{0}
vk1C & x::Send, {Blind}{1}
vk1C & c::Send, {Blind}{2}
vk1C & v::Send, {Blind}{3}
vk1C & s::Send, {Blind}{4}
vk1C & d::Send, {Blind}{5}
vk1C & f::Send, {Blind}{6}
vk1C & w::Send, {Blind}{7}
vk1C & e::Send, {Blind}{8}
vk1C & r::Send, {Blind}{9}
vk1C & a::Send, {Blind}{-}

vk1C & q::Send, {Blind}{^}

vk1C & t::Send, {Blind}{@}
vk1C & y::Send, {Blind}{\}
vk1C & g::Send, {Blind}{[}
vk1C & h::Send, {Blind}{]}
vk1C & b::Send, {Blind}{sc028}
vk1C & n::Send, {Blind}{vkE2sc073}

vk1C & 1::Send, {Blind}{F1}
vk1C & 2::Send, {Blind}{F2}
vk1C & 3::Send, {Blind}{F3}
vk1C & 4::Send, {Blind}{F4}
vk1C & 5::Send, {Blind}{F5}
vk1C & 6::Send, {Blind}{F6}
vk1C & 7::Send, {Blind}{F7}
vk1C & 8::Send, {Blind}{F8}
vk1C & 9::Send, {Blind}{F9}
vk1C & 0::Send, {Blind}{F10}
vk1C & -::Send, {Blind}{F11}
vk1C & ^::Send, {Blind}{F12}

vk1C::
  IME_SET(1)
  IME_SetConvMode(9)
  Return
