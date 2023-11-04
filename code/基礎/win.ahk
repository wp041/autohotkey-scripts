; 日付、時間入力
#d::
  FormatTime,TimeString,,yyyy-MM-dd
  backup := ClipboardAll
  Clipboard := % TimeString
  Send,^v
  sleep,100
  Clipboard := backup
Return

#M::Run,notepad.exe