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

$Esc::
    KeyWait, Esc, T0.3
    if (ErrorLevel){
        send,!{F4}
    }else{
        send,{Esc}
        altmode := False
        ToolTip,,,,2
    }
    keywait, Esc
return

f16 & k::
    WinActivate, ahk_exe chrome.exe
    Send, ^t
return

F16 & m::
    WinActivate, ahk_exe obsidian.exe
    Send, ^t
    Send, ^d
    Sleep, 1000
    Send, ^{End}
    Send, ^m
Return

F16 & o::
    WinActivate, ahk_exe obsidian.exe
    Send, ^o
Return
F16 & /::
    WinActivate, ahk_exe chrome.exe
    CoordMode, Mouse, Relative
    MouseClick, L, 150, 20, 1, 0,
return

; 変換キー

vk1C & F13::AltTab
