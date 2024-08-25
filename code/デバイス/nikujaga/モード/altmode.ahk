

; 起動
F14::
    If (altmode == True){
        altmode := False
        Progress, 6:off
        Progress, 7:off
        Progress, 8:off
        Progress, 9:off
        Progress, 10:off
    }Else{
        altmode := True
        Progress, 6:b zh0 fs6 w950 h5 x970 y0 ctffffff cwff0000 c00, altmode, , ,plemoljp
        Progress, 7:b zh0 fs6 w950 h5 x-1580 y-1084 ctffffff cwff0000 c00, altmode, , ,plemoljp
        Progress, 8:b zh0 fs6 w950 h5 x-950 y0 ctffffff cwff0000 c00, altmode, , ,plemoljp
        Progress, 9:b zh0 fs6 w950 h5 x340 y-1080 ctffffff cwff0000 c00, altmode, , ,plemoljp
        Progress, 10:b zh0 fs6 w535 h5 x2490 y-944 ctffffff cwff0000 c00, altmode, , ,plemoljp
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

Esc::
    altmode := False
    Progress, 6:off
    Progress, 7:off
    Progress, 8:off
    Progress, 9:off
    Progress, 10:off
Return

#if