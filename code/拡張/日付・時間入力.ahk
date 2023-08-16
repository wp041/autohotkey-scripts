#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

;-----------------------------------------------------------------------------
; 日付・時間入力.ahk

; win+dで日付を入力
#d::
  FormatTime,TimeString,,yyyy-MM-dd
  Send,%TimeString%
  Return
; win+shift+d
#+d::
  FormatTime,TimeString,,M-d
  Send,%TimeString%
  Return

; win+tで時間を入力（24h）
#t::
  FormatTime,TimeString,,HH:mm
  Send,%TimeString%
  Return
