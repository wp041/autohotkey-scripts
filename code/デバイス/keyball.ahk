; keyball.ahk
; 概要：キーボール使用時

#UseHook

; ホイール
#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

; ファンクションキー
F14::
    key := "F14"
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
        return
    }else{ ;短押しした場合
        Send, {Blind}{Media_Play_Pause}
        KeyWait, %key%
        return
    }

F15::

F16::
    key := "F16"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合
        Send, +^v
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        Send,^v
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, ^c
        KeyWait, %key%
        return
    }
Return

+F16::Send, ^x

F18::Send, ^z
+F18::Send, +^z

F21::Send, {Blind}{Volume_Up}
F22::Send, {Blind}{Volume_Down}
F23::Send, {Blind}{Media_Next}
F24::Send, {Blind}{Media_Prev}

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

vk1D & sc027::
    if GetKeyState("Shift") {
        Send, *
        return
    }
    Send, {Blind}{+}
Return

vk1D & p::
    if GetKeyState("Shift") {
        Send, *
        return
    }
    Send, {Blind}{+}
Return

vk1D & /::
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
