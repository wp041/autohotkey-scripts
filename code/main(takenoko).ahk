#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

; 基礎（デバイス共通）
#Include *i 基礎/tooltip.ahk
#Include *i 基礎/win.ahk
#Include *i 基礎/その他.ahk
#Include *i 基礎/ファンクション.ahk
#Include *i 基礎/日本語入力.ahk
#Include *i 基礎/変換.ahk
#Include *i 基礎/無変換.ahk
#Include *i 基礎/F15.ahk
#Include *i 基礎/F16.ahk

; デバイス
#Include *i デバイス/takenoko.ahk
End & E::Run, "C:\Users\okiko\AppData\Local\Programs\Microsoft VS Code\Code.exe" "C:\Users\okiko\Documents\GitHub\AutoHotKey-scripts"

; 拡張
#Include *i 拡張/indesign.ahk
#Include *i 拡張/ソフトウェア固有.ahk

; temp