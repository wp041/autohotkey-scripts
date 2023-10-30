;F20

F20::LWin

; esc
$Esc::
    KeyWait, Esc, T0.2
    if ErrorLevel
        send,!{F4}
    else
        send,{Esc}
    keywait, Esc
return

; ホイール

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

~LCtrl & WheelLeft::AltTab
~LCtrl & WheelRight::ShiftAltTab

; ファンクションキー

F13::Return

F13 & m::Send, #1
F13 & ,::Send, #2
F13 & .::Send, #3

F13 & j::Send, #4
F13 & k::Send, #5
F13 & l::Send, #6

F13 & u::Send, #7
F13 & i::Send, #8
F13 & o::Send, #9

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
        Send, 行動 ; 下のコメントアウトされているコードを用いるとメモのところに「行動」という文字列が入っていても動作するようになる。ただし、実行が遅い
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