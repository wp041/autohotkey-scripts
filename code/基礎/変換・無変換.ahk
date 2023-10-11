; 変換

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

vk1D & u::Send, {Blind}{7}
vk1D & i::Send, {Blind}{8}
vk1D & o::Send, {Blind}{9}

vk1D & j::Send, {Blind}{4}
vk1D & k::Send, {Blind}{5}
vk1D & l::Send, {Blind}{6}

vk1D & m::Send, {Blind}{1}
vk1D & ,::Send, {Blind}{2}
vk1D & .::Send, {Blind}{3}

vk1D & h::Send, {Blind}{+}
vk1D & n::Send, {Blind}{-}
vk1D & sc027::Send, *
vk1D & /::Send, /

vk1D & p::Send, <
vk1D & @::Send, >

vk1D & Enter::Send, {Blind}{=}

vk1D & sc073::Send, {Blind}{~}

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