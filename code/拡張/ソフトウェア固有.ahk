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
    vk1D & g::[
    vk1D & b::]
    vk1D & f::!]
    vk1D & v::![
    Alt::Space
    ;F1（ペンの下ボタン）を押すたびに、ペンと消しゴムを切り替える
    F1::
        Flag += 1
        If Flag = 1
        {Send, p
            Return
        }
        If Flag = 2
            Send, e
        Flag =
    Return
    F13::LAlt
    LWin::LAlt
#IfWinActive

#IfWinActive, ahk_exe chrome.exe
    Tab::Tab
    Tab & c::
        send, !{d}
        Sleep, 20
        send, ^c
    Return
    Tab & t::
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
#IfWinActive

#IfWinActive, ahk_exe explorer.exe
    Tab::Tab
    Tab & s::send, !{Up}
    Tab & c::
        send, !{d}
        send, ^c
    Return
    Tab & p::
        send, !{d}
        Sleep, 20
        send, powershell
        send, {Enter}
    Return
    Tab & e::
        send, !{d}
        Sleep, 20
        send, cmd
        send, {Enter}
    Return
    Tab & v::
        IME_SET(0)
        send, !{d}
        Sleep, 20
        send, cmd
        send, {Enter}
        Sleep, 500
        send, code .
        Sleep, 200
        send, {Enter}
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