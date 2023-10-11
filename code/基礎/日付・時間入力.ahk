; 日付・時間入力.ahk

; win+dで日付を入力
#d::
  FormatTime,TimeString,,yyyy-MM-dd
  Send,%TimeString%
Return
; win+shift+d
#+d::
  FormatTime,TimeString,,M-d
  Send,%TimeString%
Return

; win+tで時間を入力（24h）
#t::
  FormatTime,TimeString,,HH:mm
  Send,%TimeString%
Return
