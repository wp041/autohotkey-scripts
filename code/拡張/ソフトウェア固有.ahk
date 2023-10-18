#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

#IfWinActive, ahk_exe GitHubDesktop.exe

    F13 & v::Send, ^+a
    F13 & e::Send, ^+f

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
    F13 & f::send, ^{Tab}
    F13 & d::send, !{Right}
    F13 & s::send, !{Left}
    F13 & a::send, ^+{Tab}

    F13 & x::send, {Home}
    F13 & z::send, {End}

    F13 & w::send, ^+{t}
    F13 & e::send, {F11}
    F13 & q::send, {Left}
    F13 & r::send, {Right}

    F13 & c::
        send, {F6}
        send, ^{c}
    Return

#IfWinActive

#IfWinActive, ahk_exe explorer.exe
    F13 & f::send, ^{Tab}
    F13 & d::send, !{Right}
    F13 & s::send, !{Left}
    F13 & x::send, !{Up}
    F13 & a::send, ^+{Tab}
    F13 & r::send, {F5}
    F13 & e::send, +^{n}
    F13 & c::
        send, !{d}
        send, {cmd}
        send, {Enter}
    Return
#IfWinActive

#IFWinActive ahk_exe Obsidian.exe
    F13 & f::send, ^{Tab}
    F13 & d::send, !{Right}
    F13 & s::send, !{Left}
    F13 & a::send, ^+{Tab}

    F13 & w::send, ^+{t}

    F13 & v::
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
    F13 & f::send, ^{PgDn}
    F13 & a::send, ^{PgUp}

    F13 & e::send, +!{r}

    F13 & w::send, ^+{t}
#IfWinActive