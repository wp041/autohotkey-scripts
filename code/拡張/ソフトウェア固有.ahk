#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

#IfWinActive, ahk_exe GitHubDesktop.exe

    ;     vk1D & v::Send, ^+a
    ;     vk1D & e::Send, ^+f

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
    vk1D & f::send, ^{Tab}
    vk1D & d::send, !{Right}
    vk1D & s::send, !{Left}
    vk1D & a::send, ^+{Tab}

    vk1D & x::send, {Home}
    vk1D & z::send, {End}

    vk1D & w::send, ^+{t}
    vk1D & e::send, {F11}
    vk1D & q::send, {Left}
    vk1D & r::send, {Right}

    vk1D & c::
        send, {F6}
        send, ^{c}
    Return

#IfWinActive

#IfWinActive, ahk_exe explorer.exe
    vk1D & f::send, ^{Tab}
    vk1D & d::send, !{Right}
    vk1D & s::send, !{Left}
    vk1D & x::send, !{Up}
    vk1D & a::send, ^+{Tab}
    vk1D & r::send, {F5}
    vk1D & e::send, +^{n}
    vk1D & c::
        send, !{d}
        send, {cmd}
        send, {Enter}
    Return
#IfWinActive

#IFWinActive ahk_exe Obsidian.exe
    vk1D & f::send, ^{Tab}
    vk1D & d::send, !{Right}
    vk1D & s::send, !{Left}
    vk1D & a::send, ^+{Tab}

    vk1D & w::send, ^+{t}

    vk1D & v::
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
    vk1D & f::send, ^{PgDn}
    vk1D & a::send, ^{PgUp}

    vk1D & e::send, +!{r}

    vk1D & w::send, ^+{t}
#IfWinActive