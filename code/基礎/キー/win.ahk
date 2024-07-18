#M::Run,notepad.exe

#r::
    KeyWait, F20
    Reload
Return
; #s:: Suspend

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
#g::
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
#w::Volume_Down
#e::Volume_Up
#s::Volume_Down
#d::Volume_Up
#a::Media_Prev
#f::Media_Next
#x::Media_Prev
#c::Media_Next
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
