; 日付、時間入力
#d::
  FormatTime,TimeString,,yyyy-MM-dd
  backup := ClipboardAll
  Clipboard := % TimeString
  Send,^v
  sleep,100
  Clipboard := backup
Return
#+d::
  FormatTime,TimeString,,M-d
  Clipboard := % TimeString
  Send,^v
  sleep,100
  Clipboard := backup
Return
#t::
  FormatTime,TimeString,,HH:mm
  Clipboard := % TimeString
  Send,^v
  sleep,100
  Clipboard := backup
Return

; リロード
#R::Reload

; エディット
#E::Run, "C:\Users\okiko\AppData\Local\Programs\Microsoft VS Code\Code.exe" "C:\Users\okiko\git\autohotkey-scripts"