#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する

; vk1D::
;     IF (IME_GetConverting() != 0){
;         Send, {F7}
;     }
;     Else{
;         ; Send, ^i
;         IME_SET(0)
;         ToolTip, en
;         sleep, 300
;         ToolTip
;     }
; Return
