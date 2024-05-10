; ホイール

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避
WheelDown::WheelUp
WheelUp::WheelDown
WheelLeft::WheelRight
WheelRight::WheelLeft

; ファンクションキー

altmode := False

Tab & F13::
    If (altmode == True){
        altmode := False
        ToolTip,,,,2
        Return
    }Else{
        altmode := True
        ToolTip, altmode, 0, 0, 2
        Return
    }
Return

F14::
    If (altmode == True){
        altmode := False
        ToolTip,,,,2
        Return
    }Else{
        altmode := True
        ToolTip, altmode, 0, 0, 2
        Return
    }
Return

; esc

$Esc::
    KeyWait, Esc, T0.2
    if (ErrorLevel){
        send,!{F4}
    }else{
        send,{Esc}
        altmode := False
        ToolTip,,,,2
    }
    keywait, Esc
return

; altもspaceとして扱う
#IF IME_GetConverting()
    Alt::Space
#If

; altmode

#If (altmode)

*s::send, {Blind}{Down}
*d::send, {Blind}{Up}
*a::send, {Blind}{Left}
*f::send, {Blind}{Right}
*e::send, {Blind}{Esc}
*g::send, {Blind}{Enter}
*l::send, {Blind}{Up}
*k::send, {Blind}{Down}
*j::send, {Blind}{Left}
*vkBB::send, {Blind}{Right}
*sc027::send, {Blind}{Right}
*,::send, {Blind}{Left}
*.::send, {Blind}{Right}

t::
    send, ^t
    altmode := False
    ToolTip,,,,2
Return

#If

; グローバルショートカットとして運用

F13 & c::Run, C:\Program Files\CELSYS\CLIP STUDIO 1.5\CLIP STUDIO PAINT\CLIPStudioPaint.exe
F13 & a::Run, C:\Users\okiko\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Aseprite.url

F16::AppsKey

F16 & r::Reload

F16 & n::
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
    Clipboard := backup
Return

InsertText(Content) {
    cb_bk = %ClipboardAll%
    Clipboard = %Content%
    Send, ^v
    Sleep, 200
    Clipboard = %cb_bk%
}

F16 & m::
    CoordMode, Mouse, Screen
    MouseClick, L, 1600, -730, 1, 0,
    Sleep, 100
    ; Sleep, 100
    ; Send, ^j
    ; Sleep, 20
    ; InsertText("<% tp.file.cursor(2) %>")
    ; Sleep, 20
    ; Send, ^t
    ; Sleep, 20
    ; Send, ^d
    ; Sleep, 500
    Send, ^{End}
    ; Send, ^f
    ; Send, ✅行動 ; 下のコメントアウトされているコードを用いるとメモのところに「行動」という文字列が入っていても動作するようになる。ただし、実行が遅い
    ; ; backup := ClipboardAll
    ; ; Clipboard := ## 行動
    ; ; Send,^v
    ; ; Clipboard := backup
    ; Send, {Enter}
    ; Send, {Esc}
    ; Send, {Esc}
    ; Send, {Up}
    Send, ^m
Return

F16 & ,::
    CoordMode, Mouse, Screen
    MouseClick, L, 1927, -1080, 1, 0,
    Sleep, 100
    Send, ^j
Return

F16 & o::
    CoordMode, Mouse, Screen
    MouseClick, L, 700, -1080, 1, 0,
    Send, ^o
Return

F16 & k::
    if GetKeyState("ctrl") {
        WinActivate, ahk_exe chrome.exe
        CoordMode, Mouse, Screen
        MouseClick, L, 2000, -944, 1, 0,
        Send, ^t
        IME_SET(0)
        Send, go
        Send, {Enter}
        Sleep, 1000
        MouseClick, L, 2700, -507, 1, 0,
        Sleep, 100
        MouseClick, L, 2255, -268, 1, 0,
        Send, ^v
        Send, {Enter}
        return
    }
    WinActivate, ahk_exe chrome.exe
    CoordMode, Mouse, Screen
    MouseClick, L, 2000, -944, 1, 0,
    Send, ^t
return

F16 & /::
    WinActivate, ahk_exe chrome.exe
    CoordMode, Mouse, Screen
    MouseClick, L, 2075, -921, 1, 0,
return

F16 & a::
    CoordMode, Mouse, Screen
    MouseClick, L, 2000, -944, 1, 0,
    Send, ^1
    MouseClick, L, 2024, -746, 1, 0,
    MouseClick, L, 2230, 850, 1, 0,
return

F16 & h::
    CoordMode, Mouse, Screen
    MouseClick, L, 3009, 0, 1, 0,
    MouseClick, L, 2990, -292, 1, 0,
    Send, ^t
Return

F16 & F18::
    CoordMode, Mouse, Screen
    MouseClick, L, 1750, 1000, 1, 0,
Return

F16 & G::
    CoordMode, Mouse, Screen
    MouseClick, L, 3009, -400, 1, 0,
    WinActivate, ahk_exe GitHubDesktop.exe
    Send, ^t
Return

; ブログ
F16 & B::Run, "C:\Users\okiko\AppData\Local\Programs\Microsoft VS Code\Code.exe" "D:\Users\okiko\git\wp041.github.io"

F17::Return

F18::Return

; ソフトウェア固有

#IfWinActive, ahk_exe Illustrator.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
#IfWinActive

#IfWinActive, ahk_exe InDesign.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
#IfWinActive

#IfWinActive, ahk_exe Photoshop.exe
^WheelUp::
    Send, {AltDown}
    Sleep, 2
    Send, {WheelDown}
    Send, {AltUp}
Return
^WheelDown::
    Send, {AltDown}
    Sleep, 2
    Send, {WheelUp}
    Send, {AltUp}
Return
#IfWinActive
