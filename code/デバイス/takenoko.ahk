; 変換

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

vk1C & h::Send, {Blind}{Volume_Up}
vk1C & Enter::Send, {Blind}{Media_Next}
vk1C & n::Send, {Blind}{Volume_Down}
vk1C & vkE2::Send, {Blind}{Media_Prev}

vk1C::
    IME_SET(1)
    IME_SetConvMode(9)
    ToolTip, ja
    sleep, 300
    ToolTip
Return

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

vk1D & Tab::Send, {Blind}{vkF0}

vk1D & Space::Send, {Blind}{Media_Play_Pause}
vk1D & LWin::Send, {Blind}{Volume_Up}
vk1D & LCtrl::Send, {Blind}{Volume_Down}

vk1D & u::Send, {Blind}{7}
vk1D & i::Send, {Blind}{8}
vk1D & o::Send, {Blind}{9}

vk1D & j::Send, {Blind}{4}
vk1D & k::Send, {Blind}{5}
vk1D & l::Send, {Blind}{6}

vk1D & m::Send, {Blind}{1}
vk1D & ,::Send, {Blind}{2}
vk1D & .::Send, {Blind}{3}

vk1D & z::Send, {Blind}{F1}
vk1D & x::Send, {Blind}{F2}
vk1D & c::Send, {Blind}{F3}
vk1D & v::Send, {Blind}{F4}
vk1D & a::Send, {Blind}{F5}
vk1D & s::Send, {Blind}{F6}
vk1D & d::Send, {Blind}{F7}
vk1D & f::Send, {Blind}{F8}
vk1D & q::Send, {Blind}{F9}
vk1D & w::Send, {Blind}{F10}
vk1D & e::Send, {Blind}{F11}
vk1D & r::Send, {Blind}{F12}

vk1D & g::Send, {Blind}{[}
vk1D & h::Send, {Blind}{]}
vk1D & b::Send, {Blind}{]}

; F13

F13::
    key := "F13"
    KeyWait, %key%, T0.15
    If(ErrorLevel){ ;長押しした場合
        Send, !{F4}
        KeyWait, %key%
        return 
    }
    KeyWait, %key%, D, T0.1
    If(!ErrorLevel){ ;2度押しした場合
        Send, {Blind}{Esc}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Esc}
        KeyWait, %key%
        return
    }

;キー配置

vk1D & F13::
    if GetKeyState("Shift") {
        Send, {Blind}{Media_Prev}
        return
    }
    Send, {Blind}{Media_Next}
Return

+sc027::Send, :

    vk1D & Enter::Send, {Blind}{=}

    vk1D & n::Send, {Blind}{~}

vk1D & esc::
    if GetKeyState("Shift") {
        Send, ,
        return
    }
    Send, {Blind}{.}
Return

vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, {^}
        return
    }
    Send, {Blind}{0}
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
        Send, *
        return
    }
    Send, {Blind}{+}
Return

vk1D & /::
    if GetKeyState("Shift") {
        Send, /
        return
    }
    Send, {Blind}{-}
Return

vk1D & sc073::
    if GetKeyState("Shift") {
        Send, >
        return
    }
    Send, {Blind}{<}
Return
