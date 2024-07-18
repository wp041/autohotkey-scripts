; セミコロンUSキーボード配列化
+sc027::Send, :

    ; Kindle起動の無効化
^!k::Return

; IME切り替えの無効化
#Space::Return

;F20
F20::LWin

; test

; 疑似スリープ
; F18::
;     If (leftmode == True){
;         leftmode := False
;         Progress, 6:off
;         Progress, 7:off
;         Progress, 8:off
;         Progress, 9:off
;         Progress, 10:off
;     }Else{
;         leftmode := True
;         Progress, 6:b zh0 fs6 w1920 h1080 x-2550 y-1084 ctffffff cw000000, , , progtip, plemoljp
;         Progress, 7:b zh0 fs6 w1920 h1080 x-1920 y0 ctffffff cw000000, , , progtip, plemoljp
;         Progress, 8:b zh0 fs6 w1920 h1080 x-630 y-1080 ctffffff cw000000, , , progtip, plemoljp
;         Progress, 9:b zh0 fs6 w1920 h1080 x0 y0 ctffffff cw000000, , , progtip, plemoljp
;         Progress, 10:b zh0 fs6 w1080 h2920 x1930 y-944 ctffffff cw000000, , , progtip, plemoljp
;     }
; Return