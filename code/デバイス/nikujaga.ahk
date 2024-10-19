; include
#Include *i デバイス/nikujaga/ソフトウェア固有.ahk
#Include *i デバイス/nikujaga/キー/F13.ahk
#Include *i デバイス/nikujaga/キー/F14.ahk
#Include *i デバイス/nikujaga/キー/F15.ahk
#Include *i デバイス/nikujaga/キー/F16.ahk
#Include *i デバイス/nikujaga/モード/altmode.ahk
#Include *i デバイス/nikujaga/モード/leftmode.ahk

; space長押し
RShift::LAlt
    
; ホイール
#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

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
    
; 変換キー
vk1C & F17::AltTab
vk1C & F18::Send, {F19}
