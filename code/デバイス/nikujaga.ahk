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

; ファンクションキー

F13::
    key := "F13"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, +!b
        Send, !{Tab}
        KeyWait, %key%
        return 
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, ^k
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Media_Play_Pause}
        KeyWait, %key%
        return
    }
Return

vk1D & F13::send, {Volume_Mute}

F14::Return

F15::
    key := "F15"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合    
        Send, #.
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, #v
        KeyWait, %key%
        return
    }
Return

F16::
    key := "F16"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合    
        WinActivate,ahk_exe Obsidian.exe
        Send, ^t
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        WinActivate,ahk_exe Obsidian.exe
        Send, ^+m
        KeyWait, %key%
        return
    }
Return