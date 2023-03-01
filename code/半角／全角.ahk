#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; 半角／全角.ahk
; 概要：半角／全角をescにする
; 備考：なんかIMEONとOFFの状態でコードが違うらしい

; vkF3::Esc
; vkF4::Esc