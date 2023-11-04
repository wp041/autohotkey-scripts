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

F14::
    key := "F14"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合    
        WinActivate,ahk_exe Obsidian.exe
        Send, ^t
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        ; なにもしない
        KeyWait, %key%
        return
    }else{ ;短押しした場合
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
    }
Return

F15::Return

F16::
    key := "F16"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合    
        WinActivate,ahk_exe Obsidian.exe
        Send, ^!+{F12}
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        WinActivate,ahk_exe Obsidian.exe
        Send, ^!+{F12}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        WinActivate,ahk_exe Obsidian.exe
        Send, ^!+{F10}
        KeyWait, %key%
        return
    }
Return

F17::
    key := "F17"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合    
        ; なにもしない
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        WinActivate, ahk_exe chrome.exe
        Send, ^t
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, #v
        KeyWait, %key%
        return
    }
Return

F18::Return