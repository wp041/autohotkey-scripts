#IfWinActive, ahk_exe CLIPStudioPaint.exe
    ;keyball用
    ^::del
    WheelLeft::WheelRight
    WheelRight::WheelLeft
    ;無変換キー
    ; LAlt & g::[下の二つと同じ効果
    ; LAlt & b::]
    vk1D & x::
        if GetKeyState("ctrl") {
            send, ^![
            return
        }
        send, !]
    Return
    vk1D & c::
        if GetKeyState("ctrl") {
            send, ^!]
            return
        }
        send, ![
    Return
    vk1D & v::
    vk1D & s::
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
    vk1D & d::
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
#IfWinActive
