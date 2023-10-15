#If IME_GET()

; sc027::Send, 
; @::Send,

; sc073::Send, +1
; /::Send, ?
sc027::Send, -
@::Send, ~

Ctrl & Enter::
    Send, {Tab}
    Sleep, 10
    Send, {Enter}
Return

c::Send, っ
l::Send, p ;cにするとぺが打ちづらい

; ん
; ~n & sc027::Send, n

; ざ
~z & sc027::Send, a

; き
~k & sc027::Send, i

; ぬ
~n & sc027::Send, u

; ふ
~h & sc027::Send, u

; む
~m & sc027::Send, u

; ゆ
~y & sc027::Send, u

; で
~d & sc027::Send, e

; ぽ
~p & sc027::Send, ぽ

#If