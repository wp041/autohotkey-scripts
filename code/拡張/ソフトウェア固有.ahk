#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

#IfWinActive, ahk_exe GitHubDesktop.exe

    tab & v::Send, ^+a
    tab & e::Send, ^+f

#IfWinActive

#IFWinActive ahk_exe Spotify.exe
#IfWinActive

#IfWinActive, ahk_exe Illustrator.exe
    F20::LAlt
#IfWinActive

#IfWinActive, ahk_exe CLIPStudioPaint.exe
    WheelLeft::WheelRight
    WheelRight::WheelLeft
    F20::LAlt
#IfWinActive

#IfWinActive, ahk_exe chrome.exe
    tab & f::send, ^{Tab}
    tab & d::send, !{Right}
    tab & s::send, !{Left}
    tab & a::send, ^+{Tab}

    ; tab & x::send, {Home}
    ; tab & z::send, {End}

    tab & w::send, ^+{t}
    tab & e::send, {F11}
    tab & q::send, {Left}
    tab & r::send, {Right}

    tab & c::
        send, {F6}
        send, ^{c}
    Return

#IfWinActive

#IfWinActive, ahk_exe explorer.exe
    tab & f::send, ^{Tab}
    tab & d::send, !{Right}
    tab & s::send, !{Left}
    tab & x::send, !{Up}
    tab & a::send, ^+{Tab}
    tab & r::send, {F5}
    tab & e::send, +^{n}
    tab & c::
        send, !{d}
        send, {cmd}
        send, {Enter}
    Return
#IfWinActive

#IFWinActive ahk_exe Obsidian.exe
    tab & f::send, ^{Tab}
    tab & d::send, !{Right}
    tab & s::send, !{Left}
    tab & a::send, ^+{Tab}

    tab & w::send, ^+{t}

    tab & v::
        Send, {End}
        Send, ^c
        Send, ^v
        Send, {BS}
        Send, {BS}
        Send, {BS}
        Send, {BS}
        Send, {Esc}
        Send, {Esc}
        Send, {Enter}
        Send, !{Up}
    Return
#IfWinActive

#IfWinActive, ahk_exe Code.exe
    tab & f::send, ^{PgDn}
    tab & a::send, ^{PgUp}

    tab & e::send, +!{r}

    tab & w::send, ^+{t}
#IfWinActive