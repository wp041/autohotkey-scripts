

; 起動
F14::
    If (altmode == True){
        altmode := False
        Progress, 2:off
    }Else{
        altmode := True
        Progress, 2:b zh0 fs6 w950 h5 x970 y0 ctffffff cwff0000 c00, altmode, , ,plemoljp
    }
Return

; 内容
#If (altmode)

*s::send, {Blind}{Down}
*d::send, {Blind}{Up}
*a::send, {Blind}{Left}
*f::send, {Blind}{Right}
*e::send, {Blind}{Esc}
*g::send, {Blind}{Enter}

*l::send, {Blind}{Up}
*k::send, {Blind}{Down}
*j::send, {Blind}{Left}
*vkBB::send, {Blind}{Right}
*sc027::send, {Blind}{Right}
*,::send, {Blind}{Left}
*.::send, {Blind}{Right}

#if