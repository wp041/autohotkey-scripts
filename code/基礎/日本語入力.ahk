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
~z & sc027::Send, a
~q & sc027::Send, a

; i
~k & sc027::Send, i

; u
~n & sc027::Send, u
~m & sc027::Send, u
~h & sc027::Send, u
~y & sc027::Send, u
~j & sc027::Send, u
~x & sc027::Send, u

; e
~d & sc027::Send, e

; o
~l & sc027::Send, o

;y
x & m::Send, my
x & h::Send, hy
x & n::Send, ny

#If