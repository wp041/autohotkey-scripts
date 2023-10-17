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

; tab

$Tab::
    startTime := A_TickCount
    KeyWait, Tab
    keyPressDuration := A_TickCount - startTime
    ; Tabを押している間に他のホットキーが発動した場合は入力しない
    ; Tabを長押ししていた場合も入力しない
    If (A_ThisHotkey == "$Tab" and keyPressDuration < 200) {
        Send,{Tab}
    }
Return

~tab & j::
~tab & k::
~tab & l::
~tab & sc027::
    Send !^{Tab}
    IsAltTab := True
Return

#If (IsAltTab)
~$tab Up::
Send {Enter}
Sleep, 100 ; これがないと切り替えが速すぎてカーソルが移動されないことがある
WinGetPos, x, y, w, h, A
newX := x + (w / 2)
newY := y + (h / 2)
CoordMode, Mouse,Screen
MouseMove, %newX%, %newY%
IsAltTab := false
Return

Tab & j::Send, {Blind}{Left}
Tab & k::Send, {Blind}{Down}
Tab & l::Send, {Blind}{Up}
Tab & sc027::Send, {Blind}{Right}
#If

; ファンクションキー

F13::
    key := "F13"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合    
        WinActivate,ahk_exe Obsidian.exe
        Send, ^!+{F11}
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
        Run,notepad.exe
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        WinActivate,ahk_exe Obsidian.exe
        Send, ^+m
        KeyWait, %key%
        return
    }
Return