; tab
Tab::Tab

tab & Enter::
    Send, {Blind}{Tab}
    Sleep, 10
    Send, {Blind}{Enter}
Return

; tab::
;     IF (IME_GetConverting() != 0){
;         Send, {Blind}{F7}
;     }
;     Else{
;         IME_SET(0)
;         ToolTip, □en
;         sleep, 300
;         ToolTip
;     }
; Return

; $Tab::
;     KeyWait, Tab, T0.2
;     if ErrorLevel
;         Run,notepad.exe
;     else
;         send,{Tab}
;     keywait, Tab
; return

tab & g::
    key := "g"
    KeyWait, %key%, T0.2
    if ErrorLevel
        send, {Media_Next}
    else
        send, {Volume_Up}
    keywait, %key%
return
tab & b::
    key := "b"
    KeyWait, %key%, T0.2
    if ErrorLevel
        send, {Media_Prev}
    else
        send, {Volume_Down}
    keywait, %key%
return

tab & F21::
    key := "F21"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, +!b
        Send, !{Tab}
        KeyWait, %key%
        return 
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, ^k
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Media_Play_Pause}
        KeyWait, %key%
        return
    }
Return

tab & t::Send, {Blind}{[}
tab & y::Send, {Blind}{]}

tab & u::Send, {Blind}{7}
tab & i::Send, {Blind}{8}
tab & o::Send, {Blind}{9}

tab & j::Send, {Blind}{4}
tab & k::Send, {Blind}{5}
tab & l::Send, {Blind}{6}

tab & m::Send, {Blind}{1}
tab & ,::Send, {Blind}{2}
tab & .::Send, {Blind}{3}

tab & h::Send, {Blind}{+}
tab & sc027::Send, {Blind}{-}
tab & /::Send, {Blind}{/}
tab & n::Send, {Blind}{*}
tab & p::Send, {Blind}{=}

tab & esc::Send, {Blind}{.}

tab & vk1D::Send, ,

tab & vk1C::Send, {Blind}{0}