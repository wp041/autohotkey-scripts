#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 変換.ahk
; 概要：変換キーを用いた様々な入力を行う

vk1C & i::Send, {Blind}{BS}
vk1C & o::Send, {Blind}{Delete}

vk1C & h::Send, {Blind}{Left}
vk1C & j::Send, {Blind}{Down}
vk1C & k::Send, {Blind}{Up}
vk1C & l::Send, {Blind}{Right}

vk1C & n::Send, {Blind}{Home}
vk1C & m::Send, {Blind}{PgDn}
vk1C & ,::Send, {Blind}{PgUp}
vk1C & .::Send, {Blind}{End}

vk1C & Space::Send, {Blind}{Enter}

vk1C & Tab::Send, {Blind}{vkF0}

vk1C & p::Send, {Blind}{PrintScreen}
vk1C & @::Send, {Blind}{ScrollLock}
vk1C & [::Send, {Blind}{Pause}

vk1C & sc027::Send, {Blind}{Volume_Down}
vk1C & sc028::Send, {Blind}{Volume_Up}
vk1C & ]::Send, {Blind}{Volume_Mute}

vk1C & /::Send, {Blind}{Media_Prev}
vk1C & vkE2::Send, {Blind}{Media_Next}
vk1C & RShift::Send, {Blind}{Media_Play_Pause}

vk1C::
  IME_SET(1)
  IME_SetConvMode(9)
  Return

; ----------------------------------------------------------
; Ifを含むもの
; 矢印キーやbs deleteもここ

; vk1C & a::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{1}
;     Return
;   }
;   Return
; vk1C & s::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{2}
;     Return
;   }
;   Return
; vk1C & d::
;   IF GetKeyState("vk1D") {
;     Send, {Blind}{3}
;     Return
;   }
;   Return
; vk1C & f::
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
