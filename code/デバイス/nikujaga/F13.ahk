
F13 & z::n
F13 & x::m
F13 & c::,
F13 & v::.
F13 & b::/

F13 & a::
    if GetKeyState("ctrl") {
        Send, {Left}
        return
    }
    Send, {Blind}{h}
Return
~a & F13::
    if GetKeyState("ctrl") {
        Send, {Left}
        return
    }
    Send, {Blind}{h}
Return
F13 & s::
    if GetKeyState("ctrl") {
        Send, {Down}
        return
    }
    Send, {Blind}{j}
Return
~s & F13::
    if GetKeyState("ctrl") {
        Send, {Down}
        return
    }
    Send, {Blind}{j}
Return
F13 & d::
    if GetKeyState("ctrl") {
        Send, {up}
        return
    }
    Send, {Blind}{k}
Return
~d & F13::
    if GetKeyState("ctrl") {
        Send, {Up}
        return
    }
    Send, {Blind}{k}
Return
F13 & f::
    if GetKeyState("ctrl") {
        Send, {Right}
        return
    }
    Send, {Blind}{l}
Return
~f & F13::
    if GetKeyState("ctrl") {
        Send, {Right}
        return
    }
    Send, {Blind}{l}
Return
F13 & g::
    If (IME_GET() == 1 ){ ; IMEがオンの時に実行
        Send, -
        Return
    }
    else{
        Send, {blind}{sc027}
        Return
    }
Return
~g & F13::
    If (IME_GET() == 1 ){ ; IMEがオンの時に実行
        Send, -
        Return
    }
    else{
        Send, {blind}{sc027}
        Return
    }
Return

F13 & q::
    if GetKeyState("ctrl") {
        Send, {Esc}
        return
    }
    Send, {Blind}{y}
Return
~q & F13::
    if GetKeyState("ctrl") {
        Send, {Esc}
        return
    }
    Send, {Blind}{y}
Return
F13 & w::
    if GetKeyState("ctrl") {
        Send, {BS}
        return
    }
    Send, {Blind}{u}
Return
~w & F13::
    if GetKeyState("ctrl") {
        Send, {BS}
        return
    }
    Send, {Blind}{u}
Return
F13 & e::
    if GetKeyState("ctrl") {
        Send, {Del}
        return
    }
    Send, {Blind}{i}
Return
~e & F13::
    if GetKeyState("ctrl") {
        Send, {Del}
        return
    }
    Send, {Blind}{i}
Return
F13 & r::
    if GetKeyState("ctrl") {
        Send, {Enter}
        return
    }
    Send, {Blind}{o}
Return
~r & F13::
    if GetKeyState("ctrl") {
        Send, {Enter}
        return
    }
    Send, {Blind}{o}
Return
F13 & t::
    if GetKeyState("ctrl") {
        Send, {PrintScreen}
        return
    }
    Send, {Blind}{p}
Return
~t & F13::
    if GetKeyState("ctrl") {
        Send, {PrintScreen}
        return
    }
    Send, {Blind}{p}
Return

F13 & 1::6
F13 & 2::7
F13 & 3::8
F13 & 4::9
F13 & 5::0
