#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

#IfWinActive, ahk_exe GitHubDesktop.exe

    F15 & v::Send, ^+a
    F15 & e::Send, ^+f

#IfWinActive

#IFWinActive ahk_exe Spotify.exe
#IfWinActive

#IfWinActive, ahk_exe Illustrator.exe
#IfWinActive

#IfWinActive, ahk_exe CLIPStudioPaint.exe
    WheelLeft::WheelRight
    WheelRight::WheelLeft
#IfWinActive

#IfWinActive, ahk_exe chrome.exe
    F15 & f::send, ^{Tab}
    F15 & d::send, !{Right}
    F15 & s::send, !{Left}
    F15 & a::send, ^+{Tab}

    F15 & x::send, {Home}
    F15 & z::send, {End}

    F15 & w::send, ^+{t}
    F15 & e::send, {F11}
    F15 & q::send, {Left}
    F15 & r::send, {Right}

    F15 & c::
        send, {F6}
        send, ^{c}
    Return

#IfWinActive

#IfWinActive, ahk_exe explorer.exe
    F15 & f::send, ^{Tab}
    F15 & d::send, !{Right}
    F15 & s::send, !{Left}
    F15 & x::send, !{Up}
    F15 & a::send, ^+{Tab}
    F15 & r::send, {F5}
    F15 & e::send, +^{n}
    F15 & c::
        send, !{d}
        send, {cmd}
        send, {Enter}
    Return
#IfWinActive

#IFWinActive ahk_exe Obsidian.exe
    F15 & f::send, ^{Tab}
    F15 & d::send, !{Right}
    F15 & s::send, !{Left}
    F15 & a::send, ^+{Tab}

    F15 & w::send, ^+{t}

    F15 & v::
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
    F15 & f::send, ^{PgDn}
    F15 & a::send, ^{PgUp}

    F15 & e::send, +!{r}

    F15 & w::send, ^+{t}
#IfWinActive