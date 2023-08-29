#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#UseHook
; --------------------------------------------------
; CLIPStudioPaint
; --------------------------------------------------
#IfWinActive, ahk_exe CLIPStudioPaint.exe

1::
2::
3::p
4::m

F8::^@

-::Enter
RAlt::Enter

vk1D & z::
vk1D & x::
vk1D & c::
vk1D & v::k
vk1D & a::
vk1D & s::9
vk1D & d::
vk1D & f::@
vk1D & q::^+!k
vk1D & w::
vk1D & e::p
vk1D & r::^@

F14::Delete

F1::Left
F2::Down
F3::Up
F4::Right

F14 & F1::Home
F14 & F2::PgDn
F14 & F3::PgUp
F14 & F4::End
#IfWinActive