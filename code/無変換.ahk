#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 無変換.ahk
; 概要：無変換キーを用いた様々な入力を行う

vk1D & Space::Send, {Blind}{Media_Play_Pause}

vk1D & p::Send, {Blind}{\}
vk1D & sc027::Send, {Blind}{-}
vk1D & /::Send, {Blind}{^}

vk1D & u::Send, {Blind}{7}
vk1D & i::Send, {Blind}{8}
vk1D & o::Send, {Blind}{9}

vk1D & j::Send, {Blind}{4}
vk1D & k::Send, {Blind}{5}
vk1D & l::Send, {Blind}{6}

vk1D & m::Send, {Blind}{1}
vk1D & ,::Send, {Blind}{2}
vk1D & .::Send, {Blind}{3}

vk1D & vk1C::Send, {Blind}{0}

vk1D & Tab::Send, {Blind}{vkF0}

vk1D & @::Send, {Blind}{ScrollLock}
vk1D & [::Send, {Blind}{Pause}

; vk1D & sc028::Send, {Blind}{Volume_Down}
; vk1D & ]::Send, {Blind}{Volume_Up}
; vk1D & Enter::Send, {Blind}{Media_Play_Pause}
; vk1D & sc028::Send, {Blind}{Media_Play_Pause}

; vk1D & vkE2::Send, {Blind}{Media_Prev}
; vk1D & vkE2::Send, {Blind}{Volume_Mute}
; vk1D & RShift::Send, {Blind}{Media_Next}

vk1D & z::Send, {Blind}{F1}
vk1D & x::Send, {Blind}{F2}
vk1D & c::Send, {Blind}{F3}
vk1D & v::Send, {Blind}{F4}
vk1D & a::Send, {Blind}{F5}
vk1D & s::Send, {Blind}{F6}
vk1D & d::Send, {Blind}{F7}
vk1D & f::Send, {Blind}{F8}
vk1D & q::Send, {Blind}{F9}
vk1D & w::Send, {Blind}{F10}
vk1D & e::Send, {Blind}{F11}
vk1D & r::Send, {Blind}{F12}

; vk1D & t::Send, {Blind}{@}
; vk1D & y::Send, {Blind}{\}
; vk1D & t::Send, {Blind}{Media_Prev}
; vk1D & y::Send, {Blind}{Media_Next}
vk1D & g::Send, {Blind}{[}
vk1D & b::Send, {Blind}{]}
; vk1D & b::Send, {Blind}{sc028}
; vk1D & n::Send, {Blind}{vkE2sc073}
; vk1D & b::Send, {Blind}{Volume_Down}
; vk1D & n::Send, {Blind}{Volume_Up}

; vk1D & 1::Send, {Blind}{F1}
; vk1D & 2::Send, {Blind}{F2}
; vk1D & 3::Send, {Blind}{F3}
; vk1D & 4::Send, {Blind}{F4}
; vk1D & 5::Send, {Blind}{F5}
; vk1D & 6::Send, {Blind}{F6}
; vk1D & 7::Send, {Blind}{F7}
; vk1D & 8::Send, {Blind}{F8}
; vk1D & 9::Send, {Blind}{F9}
; vk1D & 0::Send, {Blind}{F10}
; vk1D & -::Send, {Blind}{F11}
; vk1D & ^::Send, {Blind}{F12}

; 以下のGetConvertingは新msIMEでは効かない。Google日本語入力では効く。
vk1D::
  IF (IME_GetConverting() != 0){
    Send, {Blind}{F7}
  }
  Else{
  IME_SET(0)
  }
  Return