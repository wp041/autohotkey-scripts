
F16::AppsKey

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
    ; Clipboard := backup
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
    MouseClick, L, 1700, -1080, 1, 0,
    if GetKeyState("F17") {
        Return
    }
    Sleep, 10
    ; Sleep, 100
    ; Send, ^j
    ; Sleep, 20
    ; InsertText("<% tp.file.cursor(2) %>")
    ; Sleep, 20
    ; Send, ^t
    ; Sleep, 20
    ; Send, ^d
    ; Sleep, 500
    Send, ^d
    Sleep, 500
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

F16 & 8::
    CoordMode, Mouse, Screen
    MouseClick, L, 1700, -538, 1, 0,
    if GetKeyState("F17") {
        Return
    }
    Else if GetKeyState("F15") {
        Return
    }
    Sleep, 10
    Send, ^{End}
    Send, ^!m
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

F16 & /::
    WinActivate, ahk_exe chrome.exe
    CoordMode, Mouse, Screen
    MouseClick, L, 2000, -944, 1, 0,
    CoordMode, Mouse, Relative
    MouseClick, L, 150, 20, 1, 0,
return

F16 & k::
    if GetKeyState("ctrl") {
        KeyWait, Ctrl
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
    else if GetKeyState("F17") {
        CoordMode, Mouse, Screen
        MouseClick, L, 2000, -944, 1, 0,
        Send, ^1
        MouseClick, L, 1990, -777, 1, 0,
        MouseClick, L, 2382, 858, 1, 0,
        return
    }
    else if GetKeyState("F18") {
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

F16 & a::
    CoordMode, Mouse, Screen
    MouseClick, L, 2000, -944, 1, 0,
    Send, ^1
    Send, +^o
    Send, +{Esc}
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

F16 & F17::#tab
