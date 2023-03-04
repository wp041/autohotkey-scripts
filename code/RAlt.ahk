#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; RAlt.ahk
; 概要：RAltをEscにする
; どうやらalt+キーはコンテクスト用に変更不可っぽい

; RAlt::