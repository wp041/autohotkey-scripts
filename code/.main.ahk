#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------------------------------------------
; .main.ahk
; ahkファイル全体の管理
;-----------------------------------------------------------------------------

; 基礎
#Include *i 基礎/変換.ahk
#Include *i 基礎/無変換.ahk
#Include *i 基礎/keyball.ahk
; 拡張
#Include *i 拡張/keyball.ahk
#Include *i 拡張/.temp.ahk
#Include *i 拡張/Obsidian.ahk
#Include *i 拡張/日付・時間入力.ahk
#Include *i 拡張/中ボタンでいつでも手のひらツール ver2（改）.ahk
#Include *i 拡張/clipstudiopaint.ahk
#Include *i 拡張/spotify.ahk