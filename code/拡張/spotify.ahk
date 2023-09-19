#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

;-------------------------------------------------
;Sportify fav
;Obsidianのquickaddショートカットをグローバルショートカットにする
;-------------------------------------------------

#WinActivateForce

*#1::
  WinActivate,ahk_exe Spotify.exe
  Send, +!b
  Send, !{Tab}
Return

Return