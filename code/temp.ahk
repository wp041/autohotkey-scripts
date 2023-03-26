#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; temp.ahk
; 概要：一時的なファイル

; $によって物理キーの入力のみに対応
$1::Send, {Blind}{F1}
$2::Send, {Blind}{F2}
$3::Send, {Blind}{F3}
$4::Send, {Blind}{F4}
$5::Send, {Blind}{F5}
$6::Send, {Blind}{F6}
$7::Send, {Blind}{F7}
$8::Send, {Blind}{F8}
$9::Send, {Blind}{F9}
$0::Send, {Blind}{F10}
$-::Send, {Blind}{F11}
$^::Send, {Blind}{F12}