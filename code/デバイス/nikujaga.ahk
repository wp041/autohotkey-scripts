; esc
$Esc::
    KeyWait, Esc, T0.2
    if ErrorLevel
        send,!{F4}
    else
        send,{Esc}
    keywait, Esc
return

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

vk1D & u::Send, {Blind}{7}
vk1D & i::Send, {Blind}{8}
vk1D & o::Send, {Blind}{9}

vk1D & j::Send, {Blind}{4}
vk1D & k::Send, {Blind}{5}
vk1D & l::Send, {Blind}{6}

vk1D & m::Send, {Blind}{1}
vk1D & ,::Send, {Blind}{2}
vk1D & .::Send, {Blind}{3}

vk1D & z::Send, {Blind}{F1}
vk1D & x::Send, {Blind}{F2}
vk1D & c::Send, {Blind}{F3}
vk1D & v::Send, {Blind}{F4}
vk1D & a::Send, {Blind}{F5}
vk1D & s::Send, {Blind}{F6}
vk1D & d::Send, {Blind}{F7}
vk1D & f::Send, {Blind}{F8}
vk1D & q::Send, {Blind}{F9}
vk1D & w::Send, {Blind}{F10}
vk1D & e::Send, {Blind}{F11}
vk1D & r::Send, {Blind}{F12}

vk1D & g::Send, {Blind}{[}
vk1D & h::Send, {Blind}{]}
vk1D & b::Send, {Blind}{]}

; LWin

LWin & Space::Send, {Blind}{Volume_Up}
LWin & LAlt::Send, {Blind}{Volume_Up}
LWin & vk1D::Send, {Blind}{Volume_Down}
LWin & F13::Send, {Blind}{Volume_Mute}

; ホイール

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

; ファンクションキー

F13::
    key := "F13"
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

vk1D & F13::
    key := "F13"
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
        Send, {Blind}{Media_Prev}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Media_Next}
        KeyWait, %key%
        return
    }

F14::
    key := "F14"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合    
        WinActivate,ahk_exe Obsidian.exe
        Send, ^t
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        WinActivate,ahk_exe Obsidian.exe
        Send, {End}
        Send, ^c
        Send, ^v
        Send, {BS}
        Send, {BS}
        Send, {BS}
        Send, {BS}
        Send, {Esc}
        Send, {Esc}
        Send, {Enter}
        Send, !{Up}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        WinActivate,ahk_exe Obsidian.exe
        Send, ^+m
        KeyWait, %key%
        return
    }
Return

; F16::
;     key := "F16"
;     KeyWait, %key%, T0.3
;     If(ErrorLevel){ ;長押しした場合
;         ; Send, ^x
;         KeyWait, %key%
;         return
;     }
;     KeyWait, %key%, D, T0.2
;     If(!ErrorLevel){ ;2度押しした場合
;         Send,^v
;         KeyWait, %key%
;         return
;     }else{ ;短押しした場合
;         Send, ^c
;         KeyWait, %key%
;         return
;     }
; Return

; +F16::
;     key := "F16"
;     KeyWait, %key%, T0.3
;     If(ErrorLevel){ ;長押しした場合
;         ; Send, +^v
;         KeyWait, %key%
;         return
;     }
;     KeyWait, %key%, D, T0.2
;     If(!ErrorLevel){ ;2度押しした場合
;         Send, +^v
;         KeyWait, %key%
;         return
;     }else{ ;短押しした場合
;         Send, ^x
;         KeyWait, %key%
;         return
;     }
; Return

F16::Send, ^z
+F16::Send, +^z

;キー配置
+sc027::Send, :

    vk1D & Enter::Send, {Blind}{=}

    vk1D & n::Send, {Blind}{~}

vk1D & esc::
    if GetKeyState("Shift") {
        Send, ,
        return
    }
    Send, {Blind}{.}
Return

vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, {^}
        return
    }
    Send, {Blind}{0}
Return

vk1D & /::
    if GetKeyState("Shift") {
        Send, *
        return
    }
    Send, {Blind}{+}
Return

vk1D & sc027::
    if GetKeyState("Shift") {
        Send, /
        return
    }
    Send, {Blind}{-}
Return

vk1D & sc073::
    if GetKeyState("Shift") {
        Send, >
        return
    }
    Send, {Blind}{<}
Return
