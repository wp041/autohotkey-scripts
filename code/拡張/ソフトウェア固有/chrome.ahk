

#IfWinActive, ahk_exe chrome.exe
    Tab::Tab
    Tab & c::
        Sleep, 100
        send, !d
        Sleep, 100
        send, ^c
    Return
    Tab & w::
        send, {F6}
        send, {F6}
        Sleep, 50
        send, {AppsKey}
        Sleep, 50
        send, {Down}
        Sleep, 10
        send, {Down}
        Sleep, 10
        send, {Down}
        Sleep, 10
        send, {Down}
        Sleep, 50
        send, {Enter}
        send, {Enter}
    Return
    Tab & a::
        send, ^+a
    Return
    tab & t::
        Sleep, 20
        CoordMode, Mouse, Relative
        MouseClick, R, 6, 95, 1, 0,
        Sleep, 20
        Send, t
        Sleep, 20
        send, {Enter}
        Sleep, 20
        send, +{tab}
        send, {Enter}
        ; send, {Esc}
    Return
    tab & s::
        send, ^s
        Sleep, 1000
        send, {Enter}
        send, {Enter}
        Sleep, 100
        send, {Down}
        send, {Down}
        send, {Down}
        send, !{Tab}
        send, ^d
        send, ^v
    Return
    
#IfWinActive