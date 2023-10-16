#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

*~Esc::
*~Tab::
*~Space::
*~LAlt::
*~RAlt::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
Return

; Ctrlを空打ちした場合ESCキーを入力する
$Ctrl::
    startTime := A_TickCount
    KeyWait, Ctrl
    keyPressDuration := A_TickCount - startTime
    ; Ctrlを押している間に他のホットキーが発動した場合は入力しない
    ; Ctrlを長押ししていた場合も入力しない
    If (A_ThisHotkey == "$Ctrl" and keyPressDuration < 200) {
        Send,{Tab}
    }
Return

$Shift::
    startTime := A_TickCount
    KeyWait, Shift
    keyPressDuration := A_TickCount - startTime
    ; Ctrlを押している間に他のホットキーが発動した場合は入力しない
    ; Ctrlを長押ししていた場合も入力しない
    If (A_ThisHotkey == "$Shift" and keyPressDuration < 200) {
        Send,{Tab}
    }
Return

$Alt::
    startTime := A_TickCount
    KeyWait, Alt
    keyPressDuration := A_TickCount - startTime
    ; Ctrlを押している間に他のホットキーが発動した場合は入力しない
    ; Ctrlを長押ししていた場合も入力しない
    If (A_ThisHotkey == "$Alt" and keyPressDuration < 200) {
        Send,{Tab}
    }
Return
