; 変換

; 変換を修飾キーとして扱うための準備
; 変換を押し続けている限りリピートせず待機
vk1C::
    IME_SET(1)
    IME_SetConvMode(9)
    ToolTip, ●ja
    sleep, 300
    ToolTip
Return

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