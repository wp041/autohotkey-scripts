#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; keyball.ahk
; 概要：keyballのためのahk

#MaxHotkeysPerInterval 200 ; 高速スクロール時に警告されるのを回避

WheelDown::WheelUp
WheelUp::WheelDown