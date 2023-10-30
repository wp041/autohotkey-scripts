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
  backup := ClipboardAll
  Clipboard := % TimeString
  Send,^v
  sleep,100
  Clipboard := backup
Return
#t::
  FormatTime,TimeString,,HH:mm
  backup := ClipboardAll
  Clipboard := % TimeString
  Send,^v
  sleep,100
  Clipboard := backup
Return

#R::Reload

#M::Run,notepad.exe