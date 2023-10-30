; 変換

vk1C::
    IF (IME_GetConverting() != 0){
        Send, {Tab}
        Sleep, 10
        Send, {Enter}
    }
    Else{
        IME_SET(1)
        IME_SetConvMode(9)
        ToolTip, ■ja
        sleep, 300
        ToolTip
    }
Return

+vk1C::+vk1C

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

vk1C & Enter::AltTab
vk1C & F17::AltTab