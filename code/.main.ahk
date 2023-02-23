#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ----------------------------------------------------------------------
; .main.ahk
; ahkファイル全体の管理

#Include *i CapsLock.ahk
#Include *i ひらがな／カタカナ.ahk
#Include *i メディアコントロール.ahk
#Include *i ローマ字入力.ahk
#Include *i 半角／全角.ahk
#Include *i 変換.ahk
#Include *i 無変換.ahk
