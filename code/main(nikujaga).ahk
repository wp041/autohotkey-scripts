; .main.ahk
; ahkファイル全体の管理

#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

; 基礎（デバイス共通）
#Include *i 基礎/tooltip.ahk
#Include *i 基礎/日本語入力.ahk
#Include *i 基礎/日付・時間入力.ahk

; デバイス
#Include *i デバイス/nikujaga.ahk

; 拡張
#Include *i 拡張/clipstudiopaint.ahk
#Include *i 拡張/indesign.ahk
#Include *i 拡張/illustrator.ahk

; templ