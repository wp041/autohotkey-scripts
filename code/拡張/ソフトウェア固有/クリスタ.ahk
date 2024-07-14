#IfWinActive, ahk_exe CLIPStudioPaint.exe

    ;keyball用
    WheelLeft::WheelRight
    WheelRight::WheelLeft

    Tab::Tab

    esc::
        IF (IME_GetConverting() != 0){
            Send, {Esc}
        }
    Return

    ;無変換キー

    vk1D & g::
        PixelSearch, posX, posY, 1754, 160, 1758, 885, 0x614c42, 0, Fast
        if (ErrorLevel == 0) ; 色が見つかった場合
        {
            ; 色が見つかった位置をクリック
            CoordMode, Mouse, Screen
            MouseClick, L, %posX%, %posY%, 1, 0,
        } ; 見つからなかった場合
        else if (ErrorLevel == 1)
        {
            MsgBox, 色 #424c61 は見つかりませんでした。
        }
        Else{ ;エラーのとき
            MsgBox, error
        }
    Return

    vk1D & b::
        PixelGetColor, color, 1759, 497
        MsgBox, %color%.
    Return

    ; レイヤー切り替え
    vk1D & s::
        if GetKeyState("ctrl") {
            send, ^![
            return
        }
        ; Else if GetKeyState("F13") {
        ;     CoordMode, Mouse, Screen
        ;     MouseClick, L, 1860, 736, 1, 0,
        ;     return
        ; }
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
        ; Else if GetKeyState("F13") {
        ;     CoordMode, Mouse, Screen
        ;     MouseClick, L, 1860, 775, 1, 0,
        ;     return
        ; }
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
    ; vk1D & q::
    ;     if GetKeyState("ctrl") {
    ;         return
    ;     }
    ;     Else if GetKeyState("shift") {
    ;         return
    ;     }
    ;     Else if GetKeyState("alt") {
    ;         send, {Esc}
    ;         return
    ;     }
    ; Return
    ; vk1D & w::
    ;     if GetKeyState("ctrl") {
    ;         return
    ;     }
    ;     Else if GetKeyState("shift") {
    ;         return
    ;     }
    ;     Else if GetKeyState("alt") {
    ;         send, {BS}
    ;         return
    ;     }
    ; Return
    ; vk1D & e::
    ;     if GetKeyState("ctrl") {
    ;         return
    ;     }
    ;     Else if GetKeyState("shift") {
    ;         return
    ;     }
    ;     Else if GetKeyState("alt") {
    ;         send, {Del}
    ;         return
    ;     }
    ; Return
    ; vk1D & r::
    ;     if GetKeyState("ctrl") {
    ;         return
    ;     }
    ;     Else if GetKeyState("shift") {
    ;         return
    ;     }
    ;     Else if GetKeyState("alt") {
    ;         send, {Enter}
    ;         return
    ;     }
    ; Return

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
        MouseClick, L, 475, 60, 1, 0,
        Sleep, 100
        MouseClick, L, 495, 605, 1, 0,
        MouseClick, L, 890, 60, 1, 0,
    Return
    Tab & y::
        CoordMode, Mouse, Screen
        Sleep, 20
        Send, v
        MouseClick, L, 475, 60, 1, 0,
        Sleep, 100
        MouseClick, L, 578, 490, 1, 0,
        MouseClick, L, 890, 60, 1, 0,
    Return
    Tab & t::
        CoordMode, Mouse, Screen
        Sleep, 20
        Send, v
        MouseClick, L, 475, 60, 1, 0,
        Sleep, 100
        MouseClick, L, 656, 490, 1, 0,
        MouseClick, L, 890, 60, 1, 0,
    Return
    Tab & x::
        CoordMode, Mouse, Screen
        Sleep, 20
        Send, ^x
        Send, ^v
        Send, ^d
        send, ^!]
        send, !]
        Send, ^+a
    Return

    vk1D & t::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1700, 60, 1, 0,
    Return
    ; vk1D & b::
    ;     CoordMode, Mouse, Screen
    ;     Sleep, 20
    ;     MouseClick, L, 1705, 60, 1, 0,
    ; Return
    ^::
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

    ^d::
        key := "d"
        KeyWait, %key%, T0.3
        If(ErrorLevel){ ;長押しした場合
            return
        }
        KeyWait, %key%, D, T0.2
        If(!ErrorLevel){ ;2度押しした場合
            CoordMode, Mouse, Screen
            MouseClick, L, 1860, 775, 1, 0,
            Sleep, 20
            Send, d
            Send, d
        }else{ ;短押しした場合
            Send, ^d
            KeyWait, %key%
            return
        }
    Return
    ; tab+数字でパレットカラーの変更

    tab & esc::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 120, 1, 0,
    Return
    tab & 1::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 140, 1, 0,
    Return
    tab & 2::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 160, 1, 0,
    Return
    tab & 3::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 180, 1, 0,
    Return
    tab & 4::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 220, 1, 0,
    Return
    tab & 5::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 230, 1, 0,
    Return

    ; ここからaltモード

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
