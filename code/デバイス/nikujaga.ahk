; ホイール

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

; audio switcher
F20 & 1::^+!F18
F20 & 2::^+!F17

; ファンクションキー

altmode := False

Tab & F13::
    If (altmode == True){
        altmode := False
        ToolTip,,,,2
        Return
    }Else{
        altmode := True
        ToolTip, altmode, 0, 0, 2
        Return
    }
Return

F14::
    If (altmode == True){
        altmode := False
        ToolTip,,,,2
        Return
    }Else{
        altmode := True
        ToolTip, altmode, 0, 0, 2
        Return
    }
Return

; esc

$Esc::
    KeyWait, Esc, T0.2
    if (ErrorLevel){
        send,!{F4}
    }else{
        send,{Esc}
        altmode := False
        ToolTip,,,,2
    }
    keywait, Esc
return

; altもspaceとして扱う
#IF IME_GetConverting()
    Alt::Space
#If

; altmode

#If (altmode)

*s::send, {Blind}{Down}
*d::send, {Blind}{Up}
*a::send, {Blind}{Left}
*f::send, {Blind}{Right}
*e::send, {Blind}{Esc}
*g::send, {Blind}{Enter}
*l::send, {Blind}{Up}
*k::send, {Blind}{Down}
*j::send, {Blind}{Left}
*vkBB::send, {Blind}{Right}
*sc027::send, {Blind}{Right}
*,::send, {Blind}{Left}
*.::send, {Blind}{Right}

t::
    send, ^t
    altmode := False
    ToolTip,,,,2
Return

#If

; グローバルショートカットとして運用

; F13
; include！！！！！！！！！

#Include *i デバイス/nikujaga/F13.ahk
#Include *i デバイス/nikujaga/F14.ahk
#Include *i デバイス/nikujaga/F15.ahk
#Include *i デバイス/nikujaga/F16.ahk

; ソフトウェア固有（nikujaga）

#IfWinActive, ahk_exe Illustrator.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
#IfWinActive

#IfWinActive, ahk_exe InDesign.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
#IfWinActive

#IfWinActive, ahk_exe Photoshop.exe
^WheelUp::
    Send, {AltDown}
    Sleep, 2
    Send, {WheelDown}
    Send, {AltUp}
Return
^WheelDown::
    Send, {AltDown}
    Sleep, 2
    Send, {WheelUp}
    Send, {AltUp}
Return
#IfWinActive
