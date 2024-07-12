#M::Run,notepad.exe
#f::Send, {F19}

; #r::
;     KeyWait, F20
;     Reload
; Return
; #s:: Suspend

; オーディオデバイスの切り替え
#+a::Send, #^v

; メディアコントロール
#w::Volume_Down
#e::Volume_Up
#q::Media_Prev
#r::Media_Next
#Tab::
    key := "Tab"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, ^k
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        WinActivate,ahk_exe Spotify.exe
        Send, +!b
        Send, !{Esc}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Media_Play_Pause}
        KeyWait, %key%
        return
    }
Return
