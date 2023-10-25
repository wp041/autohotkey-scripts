#If IME_GET() ; IMEがオンの時に実行

sc027::Send, -

c::Send, っ
q::F7

vk1C & vk1D::
    Send, {Tab}
    Sleep, 10
    Send, {Enter}
Return

vk1D::
    key := "vk1D"
    KeyWait, %key%, D, T0.15
    If(!ErrorLevel){ ;2度押しした場合
        Send, {F7}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        IF (IME_GetConverting() != 0){
            Send, {Blind}{F7}
        }
        Else{
            IME_SET(0)
            ToolTip, □en
            sleep, 300
            ToolTip
        }
        KeyWait, %key%
        return
    }
Return

#If