InputBox, Min, 簡易タイマー, 時間を設定してください, , , , , , , , 5
Timer := Min * 60000

If(ErrorLevel == 0){
    MsgBox, , タイマー開始, %Min%分カウントします..., 2
    Sleep, %Timer%
    ToolTip, %Min%分経過しました
    Sleep, 5000
    ToolTip
    ExitApp
}else{
    ExitApp
}
