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