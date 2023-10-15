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