

; 起動
F14::
    If (altmode == True){
        altmode := False
        ; ToolTip,,,,2
        Progress, 2:off
    }Else{
        altmode := True
        ; ToolTip, altmode, 0, 0, 2
        Progress, 2:b zh0 fs4 w960 x960 y0 ctffffff cw00ff00 c00, ,altmode , progtip, plemoljp
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