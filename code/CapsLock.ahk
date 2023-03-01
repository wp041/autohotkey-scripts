#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; CapsLock.ahk
; 概要：CapsLockをctrlにする(shift*は効かない)

; 以下はimeの状況を感知してcapslockを回避しようとしたものの残骸
; capslockは上位機能だから、乗っ取れない
; +vkF0::
; If (IME_GetConverting() = 2)
; {
;     Send, {Shift}{Tab}
; }
