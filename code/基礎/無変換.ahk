;無変換

vk1D::
    altmode := False
    ToolTip,,,,2
    IF (IME_GetConverting() != 0){
        Send, {Blind}{F7}
    }
    Else{
        IME_SET(0)
        ToolTip, □en
        sleep, 300
        ToolTip
    }
Return

vk1D & u::Send, {Blind}{7}
vk1D & i::Send, {Blind}{8}
vk1D & o::Send, {Blind}{9}

vk1D & j::Send, {Blind}{4}
vk1D & k::Send, {Blind}{5}
vk1D & l::Send, {Blind}{6}

vk1D & m::Send, {Blind}{1}
vk1D & ,::Send, {Blind}{2}
vk1D & .::Send, {Blind}{3}

vk1D & /::
    if GetKeyState("Shift") {
        Send, {NumpadMult}
        return
    }
    Send, {Blind}{NumpadAdd}
Return
vk1D & sc027::
    if GetKeyState("Shift") {
        Send, {NumpadDiv}
        return
    }
    Send, {Blind}{NumpadSub}
Return
vk1D & sc073::Send, {Blind}{=}
vk1D & p::Send, {Blind}{<}
vk1D & @::Send, {Blind}{>}

vk1D & g::Send, {Blind}{[}
vk1D & h::Send, {Blind}{]}

vk1D & esc::Send, {Blind}{.}
vk1D & F16::Send, {Blind}{,}
vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, {|}
        return
    }
    Send, {Blind}{0}
Return

vk1D & e::
    if GetKeyState("alt") {
        send, {Esc}
        return
    }
    send, {Volume_Up}
Return
vk1D & w::
    if GetKeyState("alt") {
        send, {Esc}
        return
    }
    send, {Volume_Down}
Return
vk1D & c::send, {Media_Next}
vk1D & x::send, {Media_Prev}
vk1D & Tab::
    key := "Tab"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, ^k
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, +!b
        Send, !{Tab}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Media_Play_Pause}
        KeyWait, %key%
        return
    }
Return

vk1D & s::
    if GetKeyState("alt") {
        send, {Up}
        return
    }
    send, ^+{Tab}
Return
vk1D & d::
    if GetKeyState("alt") {
        send, {Down}
        return
    }
    send, ^{Tab}
Return
vk1D & a::
    if GetKeyState("alt") {
        send, {Left}
        return
    }
    send, !{Left}
Return
vk1D & f::
    if GetKeyState("alt") {
        send, {Right}
        return
    }
    send, !{Right}
Return