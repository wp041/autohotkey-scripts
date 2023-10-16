#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

#IfWinActive, ahk_exe GitHubDesktop.exe

    vk1D & v::Send, ^+a
    vk1D & e::Send, ^+f

#IfWinActive

#IFWinActive ahk_exe Spotify.exe
#IfWinActive

#IFWinActive ahk_exe Obsidian.exe
    vk1D & f::send, ^{Tab}
    vk1D & d::send, !{Right}
    vk1D & s::send, !{Left}
    vk1D & a::send, ^+{Tab}

    vk1D & w::
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

    vk1D & w::send, ^+{t}
#IfWinActive