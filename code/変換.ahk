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
~vk1C & k::Send, {Blind}{Up}
~vk1C & j::Send, {Blind}{Down}
~vk1C & l::Send, {Blind}{Right}

~vk1C & a::Send, {Blind}{Home}
~vk1C & s::Send, {Blind}{PgUp}
~vk1C & d::Send, {Blind}{PgDn}
~vk1C & f::Send, {Blind}{End}

~vk1C & o::Send, {Blind}{BS}
~vk1C & p::Send, {Blind}{Delete}
