#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#SingleInstance, Force

;-----------------------------------------
;メディア操作


;右Ctrl＋↓、右Ctrl＋↑でメディア再生・一時停止
RCtrl & Down::Media_Play_Pause
RCtrl & Up::Media_Play_Pause
Return

;右Ctrl＋→で次へ
RCtrl & Right::Media_Next
Return

;右Ctrl＋←で前へ
RCtrl & Left::Media_Prev
Return

