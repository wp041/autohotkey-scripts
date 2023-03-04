#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; F13.ahk
; 概要：F13キー（change keyを用いてKANAに割り当てられている）を用いた様々な入力を行う

F13::Esc