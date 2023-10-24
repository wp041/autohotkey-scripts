#If IME_GET() ; IMEがオンの時に実行

sc027::Send, -

c::Send, っ

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