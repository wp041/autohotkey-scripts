#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; F14.ahk
; 概要：F14キー（change keyを用いてtabに割り当てられている）を用いた様々な入力を行う

F14::Enter