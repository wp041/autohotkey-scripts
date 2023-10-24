#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

#IfWinActive, ahk_exe GitHubDesktop.exe
    Alt::Alt
    Alt & v::Send, ^+a
    Alt & e::Send, ^+f
    Alt & g::Send, ^+g
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
    Alt::Alt
    Alt & f::send, {F11}
    Alt & c::
        send, {F6}
        send, ^{c}
    Return
#IfWinActive

#IfWinActive, ahk_exe explorer.exe
    Alt::Alt
    Alt & s::send, !{Up}
    Alt & c::
        send, !{d}
        send, {cmd}
        send, {Enter}
    Return
#IfWinActive

#IFWinActive ahk_exe Obsidian.exe
    Alt::Alt
    Alt & w::
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

    Alt::Alt
    Alt & e::send, +!{r}
#IfWinActive