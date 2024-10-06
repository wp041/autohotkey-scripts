#IFWinActive ahk_exe Obsidian.exe
    Tab::Tab
    ; Tab & w::
    ;     Send, {End}
    ;     Send, ^c
    ;     Send, ^v
    ;     Send, {BS}
    ;     Send, {BS}
    ;     Send, {BS}
    ;     Send, {BS}
    ;     Send, {Esc}
    ;     Send, {Esc}
    ;     Send, {Enter}
    ;     Send, !{Up}
    ; Return
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
    Tab & i::
        clipboard = ![[%clipboard%.png]][[%clipboard%.clip]]
        Send, ^v
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
    CoordMode, Mouse, Relative
    vk1D & z::MouseClick, L, 30, 280, 1, 0,
    vk1D & v::MouseClick, L, 100, 280, 1, 0,
    Tab & w::
        if GetKeyState("alt") {
            Sleep, 200
            send, {F2}
            Sleep, 20
            send, ^c
            send, {Esc}
            Sleep, 300
        }
        Else{
            Sleep, 200
            send, {F2}
            Sleep, 20
            send, ^c
            send, {Esc}
            Sleep, 300
            Send, ^w
        }
        CoordMode, Mouse, Screen
        MouseClick, L, 300, -1080, 1, 0,
        Sleep, 100
        send, ^t
        send, ^+o
        Sleep, 200
        send, ^v
        Sleep, 20
        send, {Enter}
        Sleep, 300
        send, ^{End}
    Return
    Tab & G::
        Send, ^s
        Send, {Enter}
    Return
    Tab & A::
        Sleep, 200
        send, {F2}
        Sleep, 20
        send, ^c
        send, {Esc}
        Sleep, 300
        CoordMode, Mouse, Screen
        MouseClick, L, 2000, -944, 1, 0,
        Send, ^1
        Send, +^o
        Send, +{Esc}
        Send, ^v
        Send, {Enter}
    Return
    Tab & t::
        Sleep, 40
        send, {End}
        Sleep, 40
        send, {End}
        Sleep, 40
        send, {End}
        Sleep, 20
        send, +{Home}
        Sleep, 10
        send, +{Home}
        Sleep, 10
        send, +{Home}
        send, +{Right}
        send, +{Right}
        send, +{Right}
        send, +{Right}
        send, +{Right}
        send, +{Right}
        Sleep, 80
        send, ^+c
        WinActivate, ahk_exe TogglTrack.exe
        Sleep, 400
        send, ^n
        Sleep, 400
        send, ^v
        Sleep, 400
        Send, {Enter}
        Send, {Enter}
        Sleep, 50
        Send, !{Esc}
    Return
    ^!c::
        backup := ClipboardAll
        Sleep, 200
        send, {F2}
        Sleep, 20
        send, ^c
        send, {Esc}
        Sleep, 10
        Send, !^x
        Send, ^v
        Send, {vk1D}
        Send, -
        Send, {U+1F4DD}
        Send, {vk1C}
        Clipboard := backup
    Return
#IfWinActive
