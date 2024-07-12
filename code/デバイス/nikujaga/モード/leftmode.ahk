; 起動
Tab & F13::
    If (leftmode == True){
        leftmode := False
        ToolTip,,,,3
        Return
    }Else{
        leftmode := True
        ToolTip, leftmode, 0, 0, 3
        Return
    }
Return

; 内容
#If (leftmode)

; 左手入力

vk1D & z::n
vk1D & x::m
vk1D & c::,
vk1D & v::.
vk1D & b::/

vk1D & a::
    if GetKeyState("alt") {
        Send, {Left}
        return
    }
    Send, {Blind}{h}
Return
vk1D & s::
    if GetKeyState("alt") {
        Send, {Down}
        return
    }
    Send, {Blind}{j}
Return
vk1D & d::
    if GetKeyState("alt") {
        Send, {up}
        return
    }
    Send, {Blind}{k}
Return
vk1D & f::
    if GetKeyState("alt") {
        Send, {Right}
        return
    }
    Send, {Blind}{l}
Return
vk1D & g::
    If (IME_GET() == 1 ){ ; IMEがオンの時に実行
        Send, -
        Return
    }
    else{
        Send, {blind}{sc027}
        Return
    }
Return

vk1D & q::
    if GetKeyState("alt") {
        Send, {Esc}
        return
    }
    Send, {Blind}{y}
Return
vk1D & w::
    if GetKeyState("alt") {
        Send, {BS}
        return
    }
    Send, {Blind}{u}
Return
vk1D & e::
    if GetKeyState("alt") {
        Send, {Del}
        return
    }
    Send, {Blind}{i}
Return
vk1D & r::
    if GetKeyState("alt") {
        Send, {Enter}
        return
    }
    Send, {Blind}{o}
Return
vk1D & t::
    if GetKeyState("alt") {
        Send, {PrintScreen}
        return
    }
    Send, {Blind}{p}
Return

vk1D & 1::6
vk1D & 2::7
vk1D & 3::8
vk1D & 4::9
vk1D & 5::0

#if