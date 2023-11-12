#IfWinActive, ahk_exe GitHubDesktop.exe
    Tab::Tab
    Tab & v::Send, ^+a
    Tab & e::Send, ^+f
    Tab & g::Send, ^+g
#IfWinActive

#IFWinActive ahk_exe Spotify.exe
#IfWinActive

#IfWinActive, ahk_exe javaw.exe
    vk1D::Space
#IfWinActive

#IfWinActive, ahk_exe Illustrator.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
#IfWinActive

#IfWinActive, ahk_exe CLIPStudioPaint.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
    WheelLeft::WheelRight
    WheelRight::WheelLeft
    Alt::Space
#IfWinActive

#IfWinActive, ahk_exe chrome.exe
    Tab::Tab
    Tab & c::
        send, {F6}
        send, ^{c}
    Return
#IfWinActive

#IfWinActive, ahk_exe explorer.exe
    Tab::Tab
    Tab & s::send, !{Up}
    Tab & c::
        send, !{d}
        send, ^c
    Return
    Tab & e::
        send, !{d}
        send, cmd
        send, {Enter}
    Return
#IfWinActive

#IFWinActive ahk_exe Obsidian.exe
    Tab::Tab
    Tab & w::
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
    vk1D & d::send, ^{PgDn}
    vk1D & s::send, ^{PgUp}

    Tab::Tab
    Tab & e::send, +!{r}
#IfWinActive