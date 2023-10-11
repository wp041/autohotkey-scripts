;Sportify fav
;Obsidianのquickaddショートカットをグローバルショートカットにする

#WinActivateForce

*+!b::
  WinActivate,ahk_exe Spotify.exe
  Send, +!b
  Send, !{Tab}
Return

Return