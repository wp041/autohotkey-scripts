#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 変換.ahk
; 概要：変換キーを用いた様々な入力を行う

;  どうやらこれが入力されない原因はAHKでこれらのキーが使えないのではなくて、この書き方だと崩壊するっぽい
; &で監視が始まって、元の空押しの効果が上書きされちゃうっぽい
; `~`をつけるとエスケープできる！！！
; 参照：https://ahkwiki.net/Hotkeys


~vk1C & h::Send, {Blind}{Left}
~vk1C & j::Send, {Blind}{Down}
~vk1C & k::Send, {Blind}{Up}
~vk1C & l::Send, {Blind}{Right}

~vk1C & p::Send, {Blind}{Delete}

~vk1C & 1::Send, {Blind}{F1}
~vk1C & 2::Send, {Blind}{F2}
~vk1C & 3::Send, {Blind}{F3}
~vk1C & 4::Send, {Blind}{F4}
~vk1C & 5::Send, {Blind}{F5}
~vk1C & 6::Send, {Blind}{F6}
~vk1C & 7::Send, {Blind}{F7}
~vk1C & 8::Send, {Blind}{F8}
~vk1C & 9::Send, {Blind}{F9}
~vk1C & 0::Send, {Blind}{F10}
~vk1C & -::Send, {Blind}{F11}
~vk1C & ^::Send, {Blind}{F12}