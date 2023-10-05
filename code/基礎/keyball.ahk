#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;-----------------------------------------------------------------------------
; keyball.ahk
; 概要：キーボール使用時の挙動を調整
; 拡張：keyball.ahkと違って、常に起動していていいもの

#UseHook

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
        Send, ^x
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        Send, ^c
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send,^v
        KeyWait, %key%
        return
    }

    +F16::Send, +^v

F17::

    F18::Send, ^z
    +F18::Send, +^z

    F21::Send, {Blind}{Volume_Up}
    F22::Send, {Blind}{Volume_Down}
    F23::Send, {Blind}{Media_Next}
    F24::Send, {Blind}{Media_Prev}