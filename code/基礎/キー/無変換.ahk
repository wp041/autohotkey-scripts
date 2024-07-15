;無変換

vk1D::
    altmode := False
    ToolTip,,,,2
    ; msime用
    ; IF (IME_GetConverting() != 0){
    ;     Send, {Blind}{F7}
    ;     key := "vk1D"
    ;     KeyWait, %key%, T0.3
    ;     If(ErrorLevel){ ;長押しした場合
    ;         return
    ;     }
    ;     KeyWait, %key%, D, T0.2
    ;     If(!ErrorLevel){ ;2度押しした場合
    ;         Send, {Blind}{F8}
    ;         KeyWait, %key%
    ;         return
    ;     }else{ ;短押しした場合
    ;         Send, {Blind}{F7}
    ;         KeyWait, %key%
    ;         return
    ;     }
    ; }
    ; Else{
    ; IME_SET(0)
    Send, {vk1D}
    ToolTip, □en
    sleep, 300
    ToolTip
    ; }
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

vk1D & h::Send, {Blind}{[}
vk1D & n::Send, {Blind}{]}

vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, {|}
        return
    }
    Send, {Blind}{0}
Return

vk1D & /::Send, {Blind}{=}

vk1D & Enter::Send, {Blind}{Enter}
vk1D & sc027::
    if GetKeyState("Shift") {
        Send, {NumpadMult}
        return
    }
    Send, {Blind}{NumpadAdd}
Return
vk1D & p::
    if GetKeyState("Shift") {
        Send, {NumpadDiv}
        return
    }
    Send, {Blind}{NumpadSub}
Return

vk1D & 7::Send, {Blind}{Tab}
vk1D & 8::Send, {Blind}{NumpadDiv}
vk1D & 9::Send, {Blind}{NumpadMult}
vk1D & 0::Send, {Blind}{BS}

vk1D & sc073::Send, {Blind}{^}

vk1D & esc::Send, {Blind}{.}
vk1D & F16::Send, {Blind}{,}
