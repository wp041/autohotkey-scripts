; 基本操作（上書き容易）

vk1D & a::send, !{left}
vk1D & f::send, !{Right}
vk1D & s::send, ^+{Tab}
vk1D & d::send, ^{Tab}

; include
#Include *i 拡張/ソフトウェア固有/クリスタ.ahk
#Include *i 拡張/ソフトウェア固有/chrome.ahk
#Include *i 拡張/ソフトウェア固有/obsidian.ahk
#Include *i 拡張/ソフトウェア固有/indesign.ahk

; その他
#IfWinActive, ahk_exe GitHubDesktop.exe
    Tab::Tab
    Tab & v::Send, ^+a
    Tab & e::Send, ^+f
    Tab & g::Send, ^+g
#IfWinActive

#IFWinActive ahk_exe Spotify.exe
#IfWinActive

#IfWinActive, ahk_exe javaw.exe
    vk1D::Space
#IfWinActive

#IfWinActive, ahk_exe explorer.exe
    Tab::Tab
    Tab & s::send, !{Up}
    Tab & c::
        send, !{d}
        send, ^c
    Return
    Tab & p::
        send, !{d}
        Sleep, 20
        send, powershell
        send, {Enter}
    Return
    Tab & e::
        send, !{d}
        Sleep, 20
        send, cmd
        send, {Enter}
    Return
    Tab & v::
        IME_SET(0)
        send, !{d}
        Sleep, 20
        send, cmd
        send, {Enter}
        Sleep, 500
        send, code .
        Sleep, 200
        send, {Enter}
        send, {Enter}
    Return
#IfWinActive

#IfWinActive, ahk_exe Code.exe
    vk1D & d::send, ^{PgDn}
    vk1D & s::send, ^{PgUp}

    Tab::Tab
    Tab & e::send, +!{r}
#IfWinActive

#IfWinActive, ahk_exe blender.exe
    Tab::Tab
    vk1D & u::Send, {Blind}{Numpad7}
    vk1D & i::Send, {Blind}{Numpad8}
    vk1D & o::Send, {Blind}{Numpad9}

    vk1D & j::Send, {Blind}{Numpad4}
    vk1D & k::Send, {Blind}{Numpad5}
    vk1D & l::Send, {Blind}{Numpad6}

    vk1D & m::Send, {Blind}{Numpad1}
    vk1D & ,::Send, {Blind}{Numpad2}
    vk1D & .::Send, {Blind}{Numpad3}
#IfWinActive

#IfWinActive, ahk_exe Eagle.exe
    Tab::Tab
#IfWinActive

#IfWinActive, ahk_exe Illustrator.exe
    Tab::Tab
    ^sc027::send, {Blind}{Ctrl}{:}
#IfWinActive

#IfWinActive, ahk_exe Photoshop.exe
    Tab::Tab
#IfWinActive