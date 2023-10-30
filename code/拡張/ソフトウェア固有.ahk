#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

#IfWinActive, ahk_exe GitHubDesktop.exe
    Tab::Tab
    Tab & v::Send, ^+a
    Tab & e::Send, ^+f
    Tab & g::Send, ^+g
#IfWinActive

#IFWinActive ahk_exe Spotify.exe
#IfWinActive

#IfWinActive, ahk_exe Illustrator.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
#IfWinActive

#IfWinActive, ahk_exe CLIPStudioPaint.exe
    WheelLeft::WheelRight
    WheelRight::WheelLeft
#IfWinActive

#IfWinActive, ahk_exe chrome.exe
    Tab::Tab
    Tab & w::send, {up}
    Tab & a::send, {Left}
    Tab & s::send, {Down}
    Tab & d::send, {Right}
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
        send, {cmd}
        send, {Enter}
    Return
    #If (altmode)
        a::send, ^+{Tab}
    f::send, ^{Tab}
    s::send, !{Left}
    d::send, !{Right}
    w::send, ^w
    c::send, ^+t
    g::send, {Right}
    +g::send, {Left}

    t::
        send, ^t
        altmode := False
        ToolTip,,,,2
    Return
    1::
        send, ^t
        send, https://twitter.com/home
        send, {Enter}
    Return
    2::
        send, ^t
        send, https://www.youtube.com/
        send, {Enter}
    Return
    #If
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
    vk1D & f::send, ^{PgDn}
    vk1D & a::send, ^{PgUp}

    Tab::Tab
    Tab & e::send, +!{r}
#IfWinActive