; 起動
F13::
    leftmode := True
    ToolTip, leftmode, 0, 0, 3
Return

^F13::
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
; godan参考にしてみる

q::l
w::k
e::s
r::t
t::n

a::a
s::i
d::u
f::e
g::o

z::h
x::m
c::y
v::r
b::w

; -

>+q::Send, p
>+w::Send, g
>+e::Send, z
>+r::Send, d
; >+t::Send, 

; >+a::Send, 
>+s::Send, ,
>+d::Send, .
>+f::Send, ?
>+g::
    If (leftmode){
        If (IME_GET() == 1 ){ ; IMEがオンの時に実行
            Send, -
            Return
        }
        else{
            Send, {sc027}
            Return
        }
    }
Return

>+z::Send, b
>+x::Send, [
>+c::Send, ]
; >+v::Send, 
; >+b::Send, 

>+1::Send, 6
>+2::Send, 7
>+3::Send, 8
>+4::Send, 9
>+5::Send, 0

; -

; F13 & q::Send, 
F13 & w::Send, q
F13 & e::Send, j
F13 & r::Send, c
; F13 & t::Send, 

; F13 & a::Send, 
; F13 & s::Send, 
; F13 & d::Send, 
; F13 & f::Send, 
; F13 & g::Send, 

F13 & z::Send, f
; F13 & x::Send, 
F13 & c::Send, x
; F13 & v::Send, 
F13 & b::Send, v

vk1D & q::Send, {Blind}{Insert}
vk1D & w::Send, {Blind}{BS}
vk1D & e::Send, {Blind}{Del}
vk1D & r::Send, {Blind}{PrintScreen}

vk1D & a::Send, {Blind}{Left}
vk1D & s::Send, {Blind}{Down}
vk1D & d::Send, {Blind}{Up}
vk1D & f::Send, {Blind}{Right}
vk1D & g::Send, {Blind}{Enter}

vk1D & z::Send, {Blind}{Home}
vk1D & x::Send, {Blind}{PgDn}
vk1D & c::Send, {Blind}{PgUp}
vk1D & v::Send, {Blind}{End}

F13::
    ToolTip,,,,2
    Send, {vk1C}
    ToolTip, ■ja
    sleep, 300
    ToolTip
Return

#If