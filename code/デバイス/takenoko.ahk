; F13

F13::
    key := "F13"
    KeyWait, %key%, T0.3
    If(ErrorLevel){ ;長押しした場合
        Send, !{F4}
        KeyWait, %key%
        return
    }
    KeyWait, %key%, D, T0.2
    If(!ErrorLevel){ ;2度押しした場合
        Send, {Blind}{Esc}
        KeyWait, %key%
        return
    }else{ ;短押しした場合
        Send, {Blind}{Esc}
        KeyWait, %key%
        return
    }
Return

F13 & m::#1
F13 & ,::#2
F13 & .::#3

F13 & j::#4
F13 & k::#5
F13 & l::#6

F13 & u::#7
F13 & i::#8
F13 & o::#9

$Esc::
    KeyWait, Esc, T0.3
    if (ErrorLevel){
        send,!{F4}
    }else{
        send,{Esc}
        altmode := False
        ToolTip,,,,2
    }
    keywait, Esc
return

#Include *i デバイス/nikujaga/キー/F16.ahk

; Space::LAlt
; LAlt::F20

Space & m::
    WinActivate, ahk_exe obsidian.exe
    Send, ^t
    Send, ^d
    Sleep, 1000
    Send, ^{End}
    Send, ^m
Return

Space & o::
    WinActivate, ahk_exe obsidian.exe
    Send, ^o
Return

Space::Space
Space & /::
    WinActivate, ahk_exe chrome.exe
    CoordMode, Mouse, Relative
    MouseClick, L, 150, 20, 1, 0,
return
Space & k::
    WinActivate, ahk_exe chrome.exe
    Send, ^t
return

Space & n::
    if GetKeyState("shift") {
        FormatTime,TimeString,,yyyy-MM-dd
        backup := ClipboardAll
        Clipboard := % TimeString
        Send,^v
        sleep,100
        Clipboard := backup
        Return
    }
    FormatTime,TimeString,,yyyy-MM-ddTHHmmss
    backup := ClipboardAll
    Clipboard := % TimeString
    Send,^v
    sleep,100
    ; Clipboard := backup
Return

; 変換キー

; vk1C & F13::AltTab
; vk1C & Enter::AltTab
; vk1C & vkBB::AltTab

