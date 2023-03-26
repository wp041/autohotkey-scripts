#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; .main.ahk
; ahkファイル全体の管理

#Include *i F13.ahk
#Include *i 変換.ahk
#Include *i 無変換.ahk
#Include *i temp.ahk