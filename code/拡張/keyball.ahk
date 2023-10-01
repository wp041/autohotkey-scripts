#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; keyball.ahk
; 概要：keyballのためのahk

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避

WheelDown::WheelUp
WheelUp::WheelDown

+-::Send, _

vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, =
        return
    }
    Send, {Blind}{NumpadAdd}
Return
vk1D & esc::Send, {Blind}{0}
vk1D & @::Send, {Blind}{BS}
vk1D & n::Send, {Blind}{NumpadMult}
; vk1D & -::Send, {Blind}{NumpadAdd}
; vk1D & /::Send, {Blind}{NumpadSub}

+sc027::Send, :