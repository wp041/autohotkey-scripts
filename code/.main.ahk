#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; #Include, betterMS-IME.ahk
#Include, media-control.ahk
#Include, romaji-input.ahk



; vk1D & 0::sample()     ;無変換+0でsample関数を呼び出す。Libのsample.ahk

; F9::
; ans := IME_GET()
; MsgBox,,, %ans%
; Return