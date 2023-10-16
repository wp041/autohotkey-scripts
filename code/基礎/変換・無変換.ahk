; 変換

vk1C::
    IME_SET(1)
    IME_SetConvMode(9)
    ToolTip, ja
    sleep, 300
    ToolTip
Return

vk1C & vk1D::AltTab

vk1C & u::Send, {Blind}{Insert}
vk1C & i::Send, {Blind}{BS}
vk1C & o::Send, {Blind}{Delete}
vk1C & p::Send, {Blind}{PrintScreen}

vk1C & j::Send, {Blind}{Left}
vk1C & k::Send, {Blind}{Down}
vk1C & l::Send, {Blind}{Up}
vk1C & sc027::Send, {Blind}{Right}

vk1C & m::Send, {Blind}{Home}
vk1C & ,::Send, {Blind}{PgDn}
vk1C & .::Send, {Blind}{PgUp}
vk1C & /::Send, {Blind}{End}

vk1C & z::Send, {Blind}{F1}
vk1C & x::Send, {Blind}{F2}
vk1C & c::Send, {Blind}{F3}
vk1C & v::Send, {Blind}{F4}
vk1C & a::Send, {Blind}{F5}
vk1C & s::Send, {Blind}{F6}
vk1C & d::Send, {Blind}{F7}
vk1C & f::Send, {Blind}{F8}
vk1C & q::Send, {Blind}{F9}
vk1C & w::Send, {Blind}{F10}
vk1C & e::Send, {Blind}{F11}
vk1C & r::Send, {Blind}{F12}

;無変換

vk1D::
    IF (IME_GetConverting() != 0){
        Send, {Blind}{F7}
    }
    Else{
        IME_SET(0)
        ToolTip, en
        sleep, 300
        ToolTip
    }
Return

vk1D & g::
    key := "g"
    KeyWait, %key%, T0.2
    if ErrorLevel
        send, {Media_Next}
    else
        send, {Volume_Up}
    keywait, %key%
return
vk1D & b::
    key := "b"
    KeyWait, %key%, T0.2
    if ErrorLevel
        send, {Media_Prev}
    else
        send, {Volume_Down}
    keywait, %key%
return

vk1D & F20::
    key := "F20"
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