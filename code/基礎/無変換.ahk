;無変換

vk1D::
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

vk1D & g::Send, {Blind}{[}
vk1D & h::Send, {Blind}{]}

vk1D & n::Send, {Blind}{~}

vk1D & u::
    IME_SET(0)
    Send, {Blind}{7}
Return
vk1D & i::
    IME_SET(0)
    Send, {Blind}{8}
Return
vk1D & o::
    IME_SET(0)
    Send, {Blind}{9}
Return

vk1D & j::
    IME_SET(0)
    Send, {Blind}{4}
Return
vk1D & k::
    IME_SET(0)
    Send, {Blind}{5}
Return
vk1D & l::
    IME_SET(0)
    Send, {Blind}{6}
Return

vk1D & m::
    IME_SET(0)
    Send, {Blind}{1}
Return
vk1D & ,::
    IME_SET(0)
    Send, {Blind}{2}
Return
vk1D & .::
    IME_SET(0)
    Send, {Blind}{3}
Return

vk1D & sc027::
    if GetKeyState("Shift") {
        Send, *
        return
    }
    Send, {Blind}{+}
Return
vk1D & p::
    if GetKeyState("Shift") {
        Send, /
        return
    }
    Send, {Blind}{-}
Return
vk1D & /::Send, {Blind}{=}
vk1D & sc073::Send, {Blind}{=}
vk1D & 8::Send, {Blind}{<}
vk1D & 9::Send, {Blind}{>}
vk1D & 0::Send, {Blind}{BS}

vk1D & 1::Send, {Blind}{F11}
vk1D & 2::Send, {Blind}{F12}

vk1D & esc::Send, {Blind}{.}
vk1D & F16::Send, {Blind}{,}

vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, {|}
        return
    }
    Send, {Blind}{0}
Return

vk1D & a::send, ^+{Tab}
vk1D & s::send, !{Left}
vk1D & d::send, !{Right}
vk1D & f::send, ^{Tab}
vk1D & z::send, ^{z}
vk1D & v::send, ^+{z}
vk1D & e::send, {Volume_Up}
vk1D & r::send, {Media_Next}
vk1D & w::send, {Volume_Down}
vk1D & q::send, {Media_Prev}
vk1D & Tab::
    key := "Tab"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, +!b
        Send, !{Tab}
        KeyWait, %key%
        return 
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, ^k
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Media_Play_Pause}
        KeyWait, %key%
        return
    }
Return