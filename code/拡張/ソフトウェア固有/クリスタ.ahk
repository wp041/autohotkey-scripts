#IfWinActive, ahk_exe CLIPStudioPaint.exe

    ;keyball用
    WheelLeft::WheelRight
    WheelRight::WheelLeft
    ^WheelLeft::Send, !.
    ^WheelRight::Send, !,

    Tab::Tab

    esc::
        IF (IME_GetConverting() != 0){
            Send, {Esc}
        }
    Return

    ;無変換キー

    ; レイヤーフォルダー開閉
    vk1D & x::
        PixelSearch, posX, posY, 1754, 160, 1758, 885, 0x614c42, 0, Fast
        if (ErrorLevel == 0) ; 色が見つかった場合
        {
            ; 色が見つかった位置をクリック
            CoordMode, Mouse, Screen
            clkX := % posX + 7
            clkY := % posY + 10
            Sleep, 20
            MouseClick, L, %clkX%, %clkY%, 1, 0,
        } ; 見つからなかった場合
        else if (ErrorLevel == 1)
        {
            MsgBox, 色 #424c61 は見つかりませんでした。
        }
        Else{ ;エラーのとき
            MsgBox, error
        }
    Return

    ; レイヤー切り替え
    vk1D & s::
        if GetKeyState("ctrl") {
            send, ^![
            return
        }
        ; Else if GetKeyState("F13") {
        ;     CoordMode, Mouse, Screen
        ;     MouseClick, L, 1860, 736, 1, 0,
        ;     return
        ; }
        Else if GetKeyState("alt") {
            send, {Down}
            return
        }
        send, !]
    Return
    vk1D & d::
        if GetKeyState("ctrl") {
            send, ^!]
            return
        }
        ; Else if GetKeyState("F13") {
        ;     CoordMode, Mouse, Screen
        ;     MouseClick, L, 1860, 775, 1, 0,
        ;     return
        ; }
        Else if GetKeyState("alt") {
            send, {Up}
            return
        }
        send, ![
    Return

    ; ページ切り替え
    vk1D & a::
        if GetKeyState("ctrl") {
            CoordMode, Mouse, Screen
            MouseClick, L, 1860, 696, 1, 0,
            return
        }
        Else if GetKeyState("shift") {
            send, +^,
            return
        }
        Else if GetKeyState("alt") {
            send, {Left}
            return
        }
        send, ^,
    Return
    vk1D & f::
        if GetKeyState("ctrl") {
            CoordMode, Mouse, Screen
            MouseClick, L, 1860, 815, 1, 0,
            return
        }
        Else if GetKeyState("shift") {
            send, +^.
            return
        }
        Else if GetKeyState("alt") {
            send, {Right}
            return
        }
        send, ^.
    Return

    ; テキスト編集コード（現在はプロパティの位置などが変わって使われてない）
    ; Tab & z:: ;テキストの折り返し
    ;     CoordMode, Mouse, Screen
    ;     Sleep, 20
    ;     Send, v
    ;     MouseClick, L, 10, 60, 1, 0,
    ;     Sleep, 200
    ;     MouseClick, L, 30, 630, 1, 0,
    ;     MouseClick, L, 890, 60, 1, 0,
    ; Return
    ; Tab & y:: ;横書き
    ;     CoordMode, Mouse, Screen
    ;     Sleep, 20
    ;     Send, v
    ;     MouseClick, L, 10, 60, 1, 0,
    ;     Sleep, 200
    ;     MouseClick, L, 578, 490, 1, 0,
    ;     MouseClick, L, 890, 60, 1, 0,
    ; Return
    ; Tab & t:: ;縦書き
    ;     CoordMode, Mouse, Screen
    ;     Sleep, 20
    ;     Send, v
    ;     MouseClick, L, 10, 60, 1, 0,
    ;     Sleep, 200
    ;     MouseClick, L, 656, 490, 1, 0,
    ;     MouseClick, L, 890, 60, 1, 0,
    ; Return

    ; 選択要素を別レイヤーに移す
    Tab & x::
        CoordMode, Mouse, Screen
        Sleep, 20
        Send, ^x
        Send, ^v
        Send, ^d
        send, ^!]
        send, !]
        Send, ^+a
    Return

    ; ツールプロパティを表示させる
    vk1D & t::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1700, 60, 1, 0,
    Return

    ; レイヤーカラーをつける
    vk1D & esc::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 120, 1, 0,
    Return
    vk1D & 1::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 140, 1, 0,
    Return
    vk1D & 2::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 160, 1, 0,
    Return
    vk1D & 3::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 180, 1, 0,
    Return
    vk1D & 4::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 220, 1, 0,
    Return
    vk1D & 5::
        CoordMode, Mouse, Screen
        Sleep, 20
        MouseClick, L, 1750, 100, 1, 0,
        MouseClick, L, 1750, 230, 1, 0,
    Return

    ; obsidianに保存
    Tab & s::
        send, ^s
        Sleep, 100
        ; ファイル保存先は指定しない
        ; send, !d
        ; Clipboard := C:\Users\okiko\git\Obsidian-personal\🖼️
        ; Send,^v
        ; send, {enter}
        Send, !n
        ; 時間
        FormatTime,TimeString,,yyyy-MM-ddTHHmmss
        backup := ClipboardAll
        Clipboard := % TimeString
        Send,^v
        ; /時間
        Send, !s
        ; obsidian格納
        Sleep, 500
        CoordMode, Mouse, Screen
        MouseClick, L, 1700, -1080, 1, 0,
        if GetKeyState("F17") {
            Return
        }
        Sleep, 10
        Send, ^d
        Sleep, 500
        Send, ^{End}
        Send, ^m
        ; ここまでF16 & m
        Sleep, 500
        Send, ^l
        Send, {Down}
        Send, {Enter}
    Return

#IfWinActive
