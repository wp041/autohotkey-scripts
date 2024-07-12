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

+z::Send, {n}
+x::Send, {m}
+c::Send, {,}
+v::Send, {.}
+b::Send, {/}

+a::Send, {h}
+s::Send, {j}
+d::Send, {k}
+f::Send, {l}
+g::
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

+q::Send, {y}
+w::Send, {u}
+e::Send, {i}
+r::Send, {o}
+t::Send, {p}

+1::6
+2::7
+3::8
+4::9
+5::0

vk1D & q::Send, {Blind}{Insert}
vk1D & w::Send, {Blind}{BS}
vk1D & e::Send, {Blind}{Del}
vk1D & r::Send, {Blind}{PrintScreen}

vk1D & a::Send, {Blind}{Left}
vk1D & s::Send, {Blind}{Down}
vk1D & d::Send, {Blind}{Up}
vk1D & f::Send, {Blind}{Right}

F13::Send, {vk1C}

#If