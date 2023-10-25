#If IME_GET() ; IMEがオンの時に実行

sc027::Send, -

c::Send, っ
q::F7

vk1C & vk1D::
    Send, {Tab}
    Sleep, 10
    Send, {Enter}
Return

#If