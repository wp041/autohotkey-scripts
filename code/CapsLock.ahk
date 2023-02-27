#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; CapsLock.ahk
; 概要：imeの変換窓が出ているときのみCapsLockをtabにする

If (IME_GetConverting() == 2){
vkF0::Tab
}
