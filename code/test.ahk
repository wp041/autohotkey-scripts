#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

; アプリ間移動
~LWin & WheelDown::AltTab ; この指定の方法、しょうじきよくわからん
~LWin & WheelUp::ShiftAltTab

~LCtrl & WheelLeft::AltTab
~LCtrl & WheelRight::ShiftAltTab

~LCtrl & WheelUp::Send, ^{Tab}
~LCtrl & WheelDown::Send, ^+{Tab}
~LWin & WheelRight::Send, ^+{Tab}
~LWin & WheelLeft::Send, ^{Tab}

; Tabを修飾キーとして扱うための準備
; Tabを押し続けている限りリピートせず待機
; $Tab::
;     startTime := A_TickCount
;     KeyWait, Tab
;     keyPressDuration := A_TickCount - startTime
;     ; Tabを押している間に他のホットキーが発動した場合は入力しない
;     ; Tabを長押ししていた場合も入力しない
;     If (A_ThisHotkey == "$Tab" and keyPressDuration < 200) {
;         Send,{Tab}
;     }
; Return

~ctrl::	; https://www.autohotkey.com/docs/commands/DllCall.htm#ExMouseSpeed
    SPI_GETMOUSESPEED := 0x70
    SPI_SETMOUSESPEED := 0x71
    ; DllCall("SystemParametersInfo", "UInt", SPI_GETMOUSESPEED, "UInt", 0, "UIntP", OrigMouseSpeed, "UInt", 0); 現在値取得
    DllCall("SystemParametersInfo", "UInt", SPI_SETMOUSESPEED, "UInt", 0, "Ptr", 2, "UInt", 0) ; 1に
    KeyWait, ctrl
    DllCall("SystemParametersInfo", "UInt", SPI_SETMOUSESPEED, "UInt", 0, "Ptr", 20, "UInt", 0) ; 20に（決め打ちが嫌なら上で取得してここで戻す）
    Send, {CtrlUp}
return
