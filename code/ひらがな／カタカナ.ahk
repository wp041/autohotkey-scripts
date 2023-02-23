#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------

vkF2::Esc

~vkF2 & h::Send, {Blind}{Left}
~vkF2 & k::Send, {Blind}{Up}
~vkF2 & j::Send, {Blind}{Down}
~vkF2 & l::Send, {Blind}{Right}

~vkF2 & a::Send, {Blind}{Home}
~vkF2 & s::Send, {Blind}{PgUp}
~vkF2 & d::Send, {Blind}{PgDn}
~vkF2 & f::Send, {Blind}{End}

~vkF2 & o::Send, {Blind}{BS}
~vkF2 & p::Send, {Blind}{Delete}