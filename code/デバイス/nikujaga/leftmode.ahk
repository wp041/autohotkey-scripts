; 起動
Tab & F13::
    If (leftmode == True){
        leftmode := False
        ToolTip,,,,2
        Return
    }Else{
        leftmode := True
        ToolTip, leftmode, 0, 0, 2
        Return
    }
Return

; 内容
#If (leftmode)
