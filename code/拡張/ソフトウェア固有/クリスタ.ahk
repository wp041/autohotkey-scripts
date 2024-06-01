#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#IfWinActive, ahk_exe CLIPStudioPaint.exe
    ;keyball用
    WheelLeft::WheelRight
    WheelRight::WheelLeft

    ;無変換キー
    ; レイヤー切り替え
    vk1D & s::
        if GetKeyState("ctrl") {
            send, ^![
            return
        }
        Else if GetKeyState("F13") {
            CoordMode, Mouse, Screen
            MouseClick, L, 1860, 736, 1, 0,
            return
        }
        Else if GetKeyState("alt") {
            send, {Down}
            return
        }
        send, !]
    Return
    vk1D & d::
        if GetKeyState("ctrl") {
            send, ^!]
            return
        }
        Else if GetKeyState("F13") {
            CoordMode, Mouse, Screen
            MouseClick, L, 1860, 775, 1, 0,
            return
        }
        Else if GetKeyState("alt") {
            send, {Up}
            return
        }
        send, ![
    Return
    ; ページ切り替え
    vk1D & a::
        if GetKeyState("ctrl") {
            CoordMode, Mouse, Screen
            MouseClick, L, 1860, 696, 1, 0,
            return
        }
        Else if GetKeyState("shift") {
            send, +^,
            return
        }
        Else if GetKeyState("alt") {
            send, {Left}
            return
        }
        send, ^,
    Return
    vk1D & f::
        if GetKeyState("ctrl") {
            CoordMode, Mouse, Screen
            MouseClick, L, 1860, 815, 1, 0,
            return
        }
        Else if GetKeyState("shift") {
            send, +^.
            return
        }
        Else if GetKeyState("alt") {
            send, {Right}
            return
        }
        send, ^.
    Return

    ; Tab::Tab
    ; Tab & e::up
    ; Tab & s::Left
    ; Tab & d::Down
    ; Tab & f::Right
    ; Tab & q::Esc
    ; Tab & w::BS
    ; Tab & r::Del
    ; Tab & g::Enter
    Tab & z::
        CoordMode, Mouse, Screen
        Sleep, 20
        Send, v
        MouseClick, L, 1555, 150, 1, 0,
        MouseClick, L, 475, 60, 1, 0,
        Sleep, 100
        MouseClick, L, 495, 605, 1, 0,
        MouseClick, L, 890, 60, 1, 0,
    Return
    Tab & v::
        CoordMode, Mouse, Screen
        Sleep, 20
        Send, v
        MouseClick, L, 1555, 150, 1, 0,
        MouseClick, L, 475, 60, 1, 0,
        Sleep, 100
        if GetKeyState("alt") {
            MouseClick, L, 578, 490, 1, 0,
            MouseClick, L, 890, 60, 1, 0,
            Return
        }
        MouseClick, L, 656, 490, 1, 0,
        MouseClick, L, 890, 60, 1, 0,
    Return
    Esc::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 475, 60, 1, 0,
    Return
    vk1D & 1::
        CoordMode, Mouse, Screen
        MouseClick, L, 1860, 696, 1, 0,
    Return
    vk1D & 2::
        CoordMode, Mouse, Screen
        MouseClick, L, 1860, 736, 1, 0,
    Return
    vk1D & 3::
        CoordMode, Mouse, Screen
        MouseClick, L, 1860, 775, 1, 0,
    Return
    vk1D & 4::
        CoordMode, Mouse, Screen
        MouseClick, L, 1860, 815, 1, 0,
    Return
    vk1D & 5::
        CoordMode, Mouse, Screen
        MouseClick, L, 1860, 855, 1, 0,
    Return

    vk1D & b::
        CoordMode, Mouse, Screen
        MouseClick, L, 1860, 775, 1, 0,
        Sleep, 20
        Send, b
        Send, b
    Return

    #If (altmode)
    b::
    CoordMode, Mouse, Screen
    MouseClick, L, 1860, 775, 1, 0,
    Sleep, 200
    Send, b
    Sleep, 200
    Send, b
Return
e::
    CoordMode, Mouse, Screen
    MouseClick, L, 1860, 775, 1, 0,
    Sleep, 20
    Send, e
    Send, e
Return
#If
#IfWinActive
