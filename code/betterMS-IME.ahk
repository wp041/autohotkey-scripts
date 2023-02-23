#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; ⚠️警告⚠️：機能しません。
; betterMS-IME.ahk
; 概要：ctrl+enterでサジェストの一番上のテキストを選択して打ち込むように設定する

If (IME_GET() == 1 )     ;IME_GETの結果が1のとき (IMEがONのとき)
^Enter::Send,{Tab}{Enter}
