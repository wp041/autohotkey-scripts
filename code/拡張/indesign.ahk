;-----------------------------------------------------------------------------
; 中ボタンでいつでも手のひらツール ver2
; 参照：http://sysys.blog.shinobi.jp/Entry/71/
; 変更点
;   中ボタンダブルクリックの機能を削除
;-----------------------------------------------------------------------------

IdProgId=InDesign.Application
DoubleClickDelay:=300
SetMouseDelay, -1
SetKeyDelay, -1
MButtonDownTime1:=0

#IfWinActive ahk_class indesign

    ;中ボタン押し下げ
    *MButton::
        BlockInput, on
        Send {Blind}{Alt Down}
        Send {Blind}{Space Down}
        Send {Blind}{LButton Down}
        BlockInput, off
    Return

    ;中ボタン押し上げ
    *MButton up::
        BlockInput, on
        Send {Blind}{LButton Up}
        Send {Blind}{Space Up}
        Send {Blind}{Alt Up}
        BlockInput, off
    Return