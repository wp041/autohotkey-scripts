#M::Run,notepad.exe

#r::
    KeyWait, F20
    Reload
Return

; everything
#f::Send, {F19}

#x::
    KeyWait, F20
    Run, "C:\Program Files\Pentablet\PenTablet.exe"
    WinActivate, ahk_exe PenTablet.exe
    pen ++
    If (pen == 1){
        MouseClick, L, 338, 533, 1, 0,
    }
    Else if (pen == 2){
        MouseClick, L, 495, 533, 1, 0,
        pen == 0
    }
    Send, !{Esc}
Return

; github
; #g::
;     key := "g"
;     KeyWait, %key%, T0.3
;     If(ErrorLevel){ ;長押しした場合
;         CoordMode, Mouse, Screen
;         MouseClick, L, 3009, -400, 1, 0,
;         WinActivate, ahk_exe GitHubDesktop.exe
;         Send, {vk1D}
;         ToolTip, □en
;         sleep, 300
;         ToolTip
;         Send, ^t
;         Return
;     }
;     KeyWait, %key%, D, T0.2
;     If(!ErrorLevel){ ;2度押しした場合
;     }else{ ;短押しした場合
;         CoordMode, Mouse, Screen
;         MouseClick, L, 3009, -400, 1, 0,
;         WinActivate, ahk_exe GitHubDesktop.exe
;         Send, ^g
;     }
; Return

; オーディオデバイスの切り替え
#a::
    if GetKeyState("alt") {
        Send, #^v
    }
    Else {
        Send, #a
    }
Return

; audioswitcher
#t::
    audio ++
    If (audio == 1){
        Send, !+{F17}
        ToolTip, bluetooth
    }
    Else if (audio == 2){
        Send, !+{F18}
        ToolTip, analog
    }
    Else if (audio == 3){
        Send, !+{F14}
        ToolTip, digital
        audio == 0
    }
    sleep, 200
    ToolTip
Return

; メディアコントロール
#s::Volume_Down
#d::Volume_Up
#+s::Media_Prev
#+d::Media_Next
#vk1D::
    key := "vk1D"
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
