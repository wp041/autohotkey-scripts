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

vk1D & d::send, ^{Tab}
vk1D & s::send, ^+{Tab}
vk1D & f::send, ^y
vk1D & a::send, ^z