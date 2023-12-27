; ホイール

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

; ファンクションキー

altmode := False

; F13::
;     If (altmode == True){
;         altmode := False
;         ToolTip,,,,2
;         Return
;     }Else{
;         altmode := True
;         ToolTip, altmode, 0, 0, 2
;         Return
;     }
; Return

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

*s::send, {Blind}{Up}
*d::send, {Blind}{Down}
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

F16::Send, !{Tab}

; グローバルショートカットとして運用

F16 & r::Reload

F16 & d::
    FormatTime,TimeString,,yyyy-MM-dd
    backup := ClipboardAll
    Clipboard := % TimeString
    Send,^v
    sleep,100
    Clipboard := backup
Return

F16 & n::
    FormatTime,TimeString,,yyyy-MM-ddTHHmmss
    backup := ClipboardAll
    Clipboard := % TimeString
    Send,^v
    sleep,100
    Clipboard := backup
Return

F16 & m::
    CoordMode, Mouse, Screen
    MouseClick, L, 1927, -1080, 1, 0,
    Send, ^d
    Sleep, 1000
    Send, ^f
    Send, ✅行動 ; 下のコメントアウトされているコードを用いるとメモのところに「行動」という文字列が入っていても動作するようになる。ただし、実行が遅い
    ; backup := ClipboardAll
    ; Clipboard := ## 行動
    ; Send,^v
    ; Clipboard := backup
    Send, {Enter}
    Send, {Esc}
    Send, {Esc}
    Send, {Up}
    Send, ^m
Return

F16 & t::
    CoordMode, Mouse, Screen
    MouseClick, L, 700, -1080, 1, 0,
    Send, ^t
Return

F16 & o::
    CoordMode, Mouse, Screen
    MouseClick, L, 700, -1080, 1, 0,
    Send, ^o
Return

F16 & k::
    WinActivate, ahk_exe chrome.exe
    CoordMode, Mouse, Screen
    MouseClick, L, 1928, -995, 1, 0,
    Send, ^t
return

F16 & p::
    CoordMode, Mouse, Screen
    MouseClick, L, -740, -920, 1, 0,
    Send, !{Esc}
return

F17::Return

F18::Return