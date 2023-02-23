#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ----------------------------------------------------------------------
; .main.ahk
; ahkファイル全体の管理

#Include, CapsLock.ahk
#Include, ひらがな／カタカナ.ahk
#Include, メディアコントロール.ahk
#Include, ローマ字入力.ahk
#Include, 変換.ahk
#Include, 無変換.ahk
