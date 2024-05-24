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
        send, !]
    Return
    vk1D & d::
        if GetKeyState("ctrl") {
            send, ^!]
            return
        }
        send, ![
    Return
    ; ページ切り替え
    vk1D & a::
        if GetKeyState("alt") {
            send, {Down}
            return
        }
        Else if GetKeyState("ctrl") {
            send, +^,
            return
        }
        send, ^,
    Return
    vk1D & f::
        if GetKeyState("alt") {
            send, {Up}
            return
        }
        Else if GetKeyState("ctrl") {
            send, +^.
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
        Sleep, 20
        CoordMode, Mouse, Screen
        MouseClick, L, 475, 60, 1, 0,
        MouseClick, L, 495, 605, 1, 0,
        MouseClick, L, 890, 60, 1, 0,
    Return
    Tab & v::
        Sleep, 20
        CoordMode, Mouse, Screen
        MouseClick, L, 475, 60, 1, 0,
        if GetKeyState("shift") {
            MouseClick, L, 578, 490, 1, 0,
            MouseClick, L, 890, 60, 1, 0,
            Return
        }
        MouseClick, L, 656, 490, 1, 0,
        MouseClick, L, 890, 60, 1, 0,
    Return
#IfWinActive
