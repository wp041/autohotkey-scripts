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

;                                                                              
;     ■■■         ■■■   ■■■      ■■■ ■■■■■■■            ■■■      ■■■     ■■■   
;   ■■■ ■■ ■■     ■■   ■■■■■■  ■■■■■ ■■■■■■■ ■     ■■  ■■■■■■    ■■    ■■■ ■■  
;  ■■      ■■      ■   ■■   ■  ■        ■    ■     ■■  ■■    ■    ■   ■■     ■ 
;  ■       ■■      ■   ■■   ■  ■        ■    ■     ■■  ■■    ■■   ■   ■      ■ 
;  ■       ■■      ■   ■■   ■  ■■■      ■    ■     ■■  ■■     ■   ■   ■      ■■
;  ■       ■■      ■   ■■■■■     ■■■    ■    ■     ■■  ■■     ■   ■   ■      ■■
;  ■       ■■      ■   ■■          ■■   ■    ■     ■■  ■■    ■■   ■   ■      ■■
;  ■■      ■■      ■   ■■          ■■   ■    ■■    ■   ■■    ■■   ■   ■■     ■ 
;   ■■     ■■      ■   ■■          ■■   ■     ■    ■   ■■   ■■    ■    ■    ■■ 
;    ■■■■■ ■■■■■■ ■■■  ■■      ■■■■■    ■     ■■■■■    ■■■■■■    ■■■    ■■■■■  
;                                                                              

#IfWinActive, ahk_exe CLIPStudioPaint.exe
    ;keyball用
    WheelLeft::WheelRight
    WheelRight::WheelLeft
    ;無変換キー
    ; LAlt & g::[下の二つと同じ効果
    ; LAlt & b::]
    vk1D & f::!]
    vk1D & v::![
    ;F1（ペンの下ボタン）を押すたびに、ペンと消しゴムを切り替える
    F1::
        Flag += 1
        If Flag = 1
        {Send, p
            Return
        }
        If Flag = 2
        {Send, j
            Return
        }
        If Flag = 3
        {Send, e
            Flag =
            Return
        }
    Return
#IfWinActive

#IfWinActive, ahk_exe chrome.exe
    Tab::Tab
    Tab & c::
        Sleep, 50
        send, !{d}
        Sleep, 50
        send, ^c
    Return
    Tab & w::
        send, {F6}
        send, {F6}
        Sleep, 50
        send, {AppsKey}
        Sleep, 50
        send, {Down}
        Sleep, 10
        send, {Down}
        Sleep, 10
        send, {Down}
        Sleep, 10
        send, {Down}
        Sleep, 50
        send, {Enter}
        send, {Enter}
    Return
    Tab & a::
        send, ^+a
    Return
    tab & t::
        Sleep, 20
        send, {AppsKey}
        Sleep, 20
        Send, t
        Sleep, 20
        send, {Enter}
        Sleep, 20
        send, {Esc}
    Return

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

#IFWinActive ahk_exe Obsidian.exe
    Tab::Tab
    Tab & w::
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
    Return
    Tab & c::
        Sleep, 200
        send, {F2}
        Sleep, 20
        send, ^c
        send, {Esc}
        Sleep, 300
        clipboard = [[%clipboard%]]
    Return
    Tab & v::
        Send, {End}
        Send, ^c
        Send, ^v
        Send, {Up}
        Send, {NumpadSub}
    Return
    Tab & b::
        if GetKeyState("alt") {
            Sleep, 50
            Send, ^+!1
            Sleep, 50
            Send, ^+!3
            return
        }
        Sleep, 50
        Send, ^+!1
        Sleep, 50
        Send, ^+!2
    Return
    ; Ctrl & j::
    ;     send, ^{Home}
    ;     sleep, 50
    ;     Send, ^j
    ; Return
    CoordMode, Mouse, Screen
    vk1D & b::MouseClick, L, 30, 180, 1, 0,
    vk1D & n::MouseClick, L, 64, 180, 1, 0,
    vk1D & t::MouseClick, L, 99, 180, 1, 0,
    vk1D & y::MouseClick, L, 138, 180, 1, 0,
    vk1D & 7::MouseClick, L, 30, 180, 1, 0,
    vk1D & 8::MouseClick, L, 64, 180, 1, 0,
    vk1D & 9::MouseClick, L, 99, 180, 1, 0,
    vk1D & 0::MouseClick, L, 138, 180, 1, 0,
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