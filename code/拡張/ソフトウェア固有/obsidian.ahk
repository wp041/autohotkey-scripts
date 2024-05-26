
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
    Tab & c::
        if GetKeyState("alt") {
            Sleep, 200
            send, {F2}
            Sleep, 20
            send, ^c
            send, {Esc}
            Sleep, 300
            Return
        }
        Else{

            Sleep, 200
            send, {F2}
            Sleep, 20
            send, ^c
            send, {Esc}
            Sleep, 300
        }
        clipboard = [[%clipboard%]]
    Return
    Tab & v::
        Send, {End}
        Send, ^c
        Send, ^v
        Send, {Up}
        Send, {NumpadSub}
    Return
    Tab & b::
        if GetKeyState("alt") {
            Sleep, 50
            Send, ^+!1
            Sleep, 50
            Send, ^+!3
            return
        }
        Sleep, 50
        Send, ^+!1
        Sleep, 50
        Send, ^+!2
    Return
    CoordMode, Mouse, Screen
    vk1D & b::MouseClick, L, 30, 180, 1, 0,
    vk1D & n::MouseClick, L, 64, 180, 1, 0,
    vk1D & t::MouseClick, L, 99, 180, 1, 0,
    vk1D & y::MouseClick, L, 138, 180, 1, 0,
    vk1D & 7::MouseClick, L, 30, 180, 1, 0,
    vk1D & 8::MouseClick, L, 64, 180, 1, 0,
    vk1D & 9::MouseClick, L, 99, 180, 1, 0,
    vk1D & 0::MouseClick, L, 138, 180, 1, 0,
    Tab & d::
        if GetKeyState("alt") {
            Sleep, 200
            send, {F2}
            Sleep, 20
            send, ^c
            send, {Esc}
            Sleep, 300
            Send, ^w
        }
        Else{
            Sleep, 200
            send, {F2}
            Sleep, 20
            send, ^c
            send, {Esc}
            Sleep, 300
        }
        CoordMode, Mouse, Screen
        MouseClick, L, 300, -1080, 1, 0,
        Sleep, 100
        send, ^t
        send, ^p
        send, ^v
        Sleep, 20
        send, {Enter}
        Sleep, 300
        send, ^{End}
    Return
#IfWinActive
