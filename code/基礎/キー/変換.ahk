; 変換

vk1C::
    altmode := False
    ToolTip,,,,2
    Send, {vk1C}
    ToolTip, ■ja
    sleep, 300
    ToolTip
Return

+vk1C::+vk1C

vk1C & u::Send, {Blind}{Insert}
vk1C & i::Send, {Blind}{BS}
vk1C & o::Send, {Blind}{Delete}
vk1C & p::
    if GetKeyState("ctrl") {
        Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ScreenToGif.lnk"
        return
    }
    Send, {Blind}{PrintScreen}
Return

vk1C & j::Send, {Blind}{Left}
vk1C & k::Send, {Blind}{Down}
vk1C & l::Send, {Blind}{Up}
vk1C & sc027::Send, {Blind}{Right}

vk1C & m::Send, {Blind}{Home}
vk1C & ,::Send, {Blind}{PgDn}
vk1C & .::Send, {Blind}{PgUp}
vk1C & /::Send, {Blind}{End}

vk1C & x::Send, {Blind}{F1}
vk1C & c::Send, {Blind}{F2}
vk1C & v::Send, {Blind}{F3}

vk1C & s::Send, {Blind}{F4}
vk1C & d::Send, {Blind}{F5}
vk1C & f::Send, {Blind}{F6}

vk1C & w::Send, {Blind}{F7}
vk1C & e::Send, {Blind}{F8}
vk1C & r::Send, {Blind}{F9}

vk1C & 2::Send, {Blind}{F10}
vk1C & 3::Send, {Blind}{F11}
vk1C & 4::Send, {Blind}{F12}

vk1C & F17::AltTab