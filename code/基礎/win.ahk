; 日付、時間入力
#d::
  FormatTime,TimeString,,yyyy-MM-dd
  Send,%TimeString%
Return
#+d::
  FormatTime,TimeString,,M-d
  Send,%TimeString%
Return
#t::
  FormatTime,TimeString,,HH:mm
  Send,%TimeString%
Return

; リロード
#R::Reload

; エディット
#E::Run, "C:\Users\okiko\AppData\Local\Programs\Microsoft VS Code\Code.exe" "C:\Users\okiko\git\autohotkey-scripts"