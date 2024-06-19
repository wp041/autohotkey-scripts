; F13

F13::
    key := "F13"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合
        Send, !{F4}
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        Send, {Blind}{Esc}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Esc}
        KeyWait, %key%
        return
    }
Return

End & r::
    Reload
    Send, {Esc}
Return

1::#1
2::#2
3::#3
4::#4
5::#5
6::#6
7::#7
8::#8
9::#9
0::#0

end & 1::
    WinActivate, ahk_exe chrome.exe
    Send, ^t
return

end & /::
    WinActivate, ahk_exe chrome.exe
    CoordMode, Mouse, Window
    MouseClick, L, 150, 20, 1, 0,
return