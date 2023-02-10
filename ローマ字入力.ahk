#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;-----------------------------------------------------------------------------
;ローマ字入力.ahk
;概要：ATOKでz.などによる矢印入力、三点リーダー入力ができないのでAHKで解決する

#Hotstring O

::zh::←
::zj::↓
::zk::↑
::zl::→

::z,::‥
::z.::……
::z[::『
::z]::』

::z;::👍
::z-::👎