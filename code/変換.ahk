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

; ----------------------------------------------------------
; Ifを含むもの
; 矢印キーやbs deleteもここ

vk1C & Space::
  IF GetKeyState("Space") {
    Send, {Blind}{q}
    Return
  }
  Send, {blind}{1}
  Return

; vk1C & x::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{q}
;     Return
;   }
;   Send, {Blind}{1}
;   Return
; vk1C & c::
;   IF GetKeyState("v") {
;     Send, {Blind}{q}
;     Return
;   }
;   Send, {Blind}{2}
;   Return
; vk1C & v::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{3}
;     Return
;   }
;   Return
; vk1C & c::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{4}
;     Return
;   }
;   Return
; vk1C & g::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{5}
;     Return
;   }
;   Return

; ; 矢印キー
; vk1C & h::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{6}
;     Return
;   }
;   Send, {Blind}{Left}
;   Return
; vk1C & j::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{7}
;     Return
;   }
;   Send, {Blind}{Down}
;   Return
; vk1C & k::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{8}
;     Return
;   }
;   Send, {Blind}{Up}
;   Return
; vk1C & l::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{9}
;     Return
;   }
;   Send, {Blind}{Right}
;   Return

; ; VolumeDown
; vk1C & sc027::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{0}
;     Return
;   }
;   Send, {Blind}{Volume_Down}
;   Return

; ; ファンクションキー
; vk1C & q::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F1}
;     Return
;   }
;   Return
; vk1C & w::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F2}
;     Return
;   }
;   Return
; vk1C & e::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F3}
;     Return
;   }
;   Return
; vk1C & r::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F4}
;     Return
;   }
;   Return
; vk1C & t::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F5}
;     Return
;   }
;   Return
; vk1C & y::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F6}
;     Return
;   }
;   Return
; vk1C & u::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F7}
;     Return
;   }
;   Return
; vk1C & i::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F8}
;     Return
;   }
;   Send, {Blind}{BS}
;   Return
; vk1C & o::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F9}
;     Return
;   }
;   Send, {Blind}{Delete}
;   Return
; vk1C & p::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F10}
;     Return
;   }
;   Send, {Blind}{PrintScreen}
;   Return
; vk1C & @::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F11}
;     Return
;   }
;   Send, {Blind}{ScrollLock}
;   Return
; vk1C & [::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{F12}
;     Return
;   }
;   Send, {Blind}{Pause}
;   Return
