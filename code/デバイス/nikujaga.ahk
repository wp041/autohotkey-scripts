; ホイール

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

~LCtrl & WheelLeft::AltTab
~LCtrl & WheelRight::ShiftAltTab

; ファンクションキー

altmode := False

F13::
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

F13 & f::AltTab
F13 & e::send, {Blind}{Up}
F13 & d::send, {Blind}{Down}
F13 & s::WinActivate, ahk_exe Spotify.exe

#If (altmode)

*e::send, {Blind}{Up}
*d::send, {Blind}{Down}
*s::send, {Blind}{Left}
*f::send, {Blind}{Right}
*a::send, {Blind}{Esc}
*g::send, {Blind}{Enter}

t::
    send, ^t
    altmode := False
    ToolTip,,,,2
Return
1::
    send, ^t
    send, https://twitter.com/home
    send, {Enter}
Return
2::
    send, ^t
    send, https://www.youtube.com/
    send, {Enter}
Return

#If

F14::Return

F15::Return

; グローバルショートカットとして運用
F16::Return

F16 & r::Reload

F16 & m::
    CoordMode, Mouse, Screen
    MouseClick, L, 1927, -1080, 1, 0,
    Send, ^d
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

F16 & o::
    CoordMode, Mouse, Screen
    MouseClick, L, 700, -1080, 1, 0,
    Send, ^o
Return

F16 & t::
    WinActivate, ahk_exe chrome.exe
    Send, ^t
return

F16 & p::
    WinActivate, ahk_exe Obsidian.exe
    KeyWait, p, T0.2
    if (ErrorLevel){
        Send, ^!+{F12}
    }else{
        Send, ^!+{F10}
    }
    keywait, p
return

F17::Return

F18::Return