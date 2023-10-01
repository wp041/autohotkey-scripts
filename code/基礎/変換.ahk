#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;-----------------------------------------------------------------------------
; 変換.ahk
; 概要：変換キーを用いた様々な入力を行う

vk1C & Tab::Send, {Blind}{vkF0}

vk1C & u::Send, {Blind}{Insert}
vk1C & i::Send, {Blind}{BS}
vk1C & o::Send, {Blind}{Delete}
vk1C & p::Send, {Blind}{PrintScreen}

vk1C & j::Send, {Blind}{Left}
vk1C & k::Send, {Blind}{Down}
vk1C & l::Send, {Blind}{Up}
vk1C & sc027::Send, {Blind}{Right}

vk1C & m::Send, {Blind}{Home}
vk1C & ,::Send, {Blind}{PgDn}
vk1C & .::Send, {Blind}{PgUp}
vk1C & /::Send, {Blind}{End}

vk1C & h::Send, {Blind}{Volume_Up}
vk1C & Enter::Send, {Blind}{Media_Next}
vk1C & n::Send, {Blind}{Volume_Down}
vk1C & vkE2::Send, {Blind}{Media_Prev}

vk1C & Space::Send, {Blind}{Media_Play_Pause}

vk1C::
  IME_SET(1)
  IME_SetConvMode(9)
Return