#IfWinActive, ahk_exe CLIPStudioPaint.exe
    ;keyball用
    ^::Enter
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

#IfWinActive
