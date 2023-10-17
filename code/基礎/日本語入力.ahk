#If A_CaretX != "" && IME_GET() ; キャレットが表示されておらず、IMEがオンの時に実行

$Ctrl::
    startTime := A_TickCount
    KeyWait, Ctrl
    keyPressDuration := A_TickCount - startTime
    ; Ctrlを押している間に他のホットキーが発動した場合は入力しない
    ; Ctrlを長押ししていた場合も入力しない
    If (A_ThisHotkey == "$Ctrl" and keyPressDuration < 100) {
        Send,{Tab}
        Sleep, 10
        Send,{Enter}
    }
Return

sc027::Send, -
@::Send, ~

c::Send, っ
l::Send, p

; a
~z & s::Send, a

; i
~k & l::Send, i

; u
~n & k::Send, u
~m & k::Send, u
~h & k::Send, u
~y & k::Send, u
~j & k::Send, u

; e
~d & s::Send, e
~d & f::Send, e

; o
~l & sc027::Send, o

; y
~n & s::Send, y
~m & s::Send, y
~h & s::Send, y

; s
~s & k::Send, u
~s & n::
    Send, {BS}
    Send, ん
Return

#If