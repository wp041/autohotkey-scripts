#SingleInstance, Force ;既にスクリプトが起動している状態で、同じスクリプトを実行した時に、自動で既存のスクリプトを終了する
#Persistent

SetTimer, CheckActiveWindow, 1000
return

CheckActiveWindow:
    oldtitle := 0
    WinGetTitle, newtitle
    if (%newtitle% != %oldtitle%){
        ; ToolTip, %newtitle%
        ToolTip, 1
        sleep, 300

        ToolTip
    }
    newtitle := oldtitle
return