; セミコロンUSキーボード配列化
+sc027::Send, :

    ; Kindle起動の無効化
^!k::Return

; IME切り替えの無効化
#Space::Return

; 拡大の無効化
^sc027::Return

; esc
$Esc::
    KeyWait, Esc, T0.2
    if (ErrorLevel){
        send,!{F4}
    }else{
        send,{Esc}
        altmode := False
        ToolTip,,,,2
    }
    keywait, Esc
return

; ペースト
Ctrl & v::
    KeyWait, v, T0.2
    if (ErrorLevel){
        send, #v
    }else{
        send, ^v 
    }
    keywait, v
return

;F20

F20::LWin