; ホイール

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

; ファンクションキー

altmode := False

Tab & F13::
    If (leftmode == True){
        leftmode := False
        ToolTip,,,,2
        Return
    }Else{
        leftmode := True
        ToolTip, leftmode, 0, 0, 2
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

; mode
#Include *i デバイス/nikujaga/altmode.ahk
#Include *i デバイス/nikujaga/leftmode.ahk

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
