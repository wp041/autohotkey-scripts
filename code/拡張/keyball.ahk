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
WheelLeft::WheelRight
WheelRight::WheelLeft

+-::Send, ~

+sc027::Send, :

    vk1D & Enter::Send, {Blind}{=}
    vk1D & n::Send, {Blind}{~}

vk1D & esc::
    if GetKeyState("Shift") {
        Send, ,
        return
    }
    Send, {Blind}{.}
Return

vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, {^}
        return
    }
    Send, {Blind}{0}
Return

vk1D & sc027::
    if GetKeyState("Shift") {
        Send, *
        return
    }
    Send, {Blind}{+}
Return

vk1D & /::
    if GetKeyState("Shift") {
        Send, /
        return
    }
    Send, {Blind}{-}
Return

vk1D & @::
    if GetKeyState("Shift") {
        Send, >
        return
    }
    Send, {Blind}{<}
Return
