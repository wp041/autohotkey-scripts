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

;無変換

vk1D & Tab::Send, {Blind}{vkF0}

vk1D & Space::Send, {Blind}{Media_Play_Pause}
vk1D & LWin::Send, {Blind}{Volume_Up}
vk1D & LCtrl::Send, {Blind}{Volume_Down}

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
