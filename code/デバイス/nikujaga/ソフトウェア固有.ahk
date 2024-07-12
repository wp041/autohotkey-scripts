
#IfWinActive, ahk_exe Illustrator.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
#IfWinActive

#IfWinActive, ahk_exe InDesign.exe
    ctrl & WheelUp::!WheelDown
    ctrl & WheelDown::!WheelUp
#IfWinActive

#IfWinActive, ahk_exe Photoshop.exe
    ^WheelUp::
        Send, {AltDown}
        Sleep, 2
        Send, {WheelDown}
        Send, {AltUp}
    Return
    ^WheelDown::
        Send, {AltDown}
        Sleep, 2
        Send, {WheelUp}
        Send, {AltUp}
    Return
#IfWinActive
