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

vk1D & LCtrl::
    key := "LCtrl"
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

vk1D & a::Send, {Blind}{Tab}
vk1D & s::Send, {Blind}{Space}
vk1D & d::
    KeyWait, d, T0.2
    if ErrorLevel
        send,!{F4}
    else
        Send, {Blind}{Esc}
    keywait, Esc
return
vk1D & f::Send, {Blind}{Enter}

vk1D & t::Send, {Blind}{[}
vk1D & y::Send, {Blind}{]}

vk1D & u::Send, {Blind}{7}
vk1D & i::Send, {Blind}{8}
vk1D & o::Send, {Blind}{9}

vk1D & j::Send, {Blind}{4}
vk1D & k::Send, {Blind}{5}
vk1D & l::Send, {Blind}{6}

vk1D & m::Send, {Blind}{1}
vk1D & ,::Send, {Blind}{2}
vk1D & .::Send, {Blind}{3}

vk1D & sc027::Send, {Blind}{+}
vk1D & p::Send, {Blind}{-}
vk1D & 8::Send, {Blind}{/}
vk1D & 9::Send, {Blind}{*}
vk1D & /::Send, {Blind}{=}
vk1D & 0::Send, {Blind}{BS}

vk1D & esc::Send, {Blind}{.}

vk1D & Tab::Send, ,

vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, {^}
        return
    }
    Send, {Blind}{0}
Return