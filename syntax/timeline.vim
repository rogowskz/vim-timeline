" syntax/timeline.vim
"
"==== Conventional vim syntax script header:
if exists("b:current_syntax")
    finish
endif

" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim

"==== Labels:
syntax match timelineLabelTODO "TODO:"
highlight timelineLabelTODO ctermfg=DarkRed
syntax match timelineLabelDONE "DONE:"
highlight timelineLabelDONE ctermfg=DarkCyan
syntax match timelineLabelDEBT "DEBT:"	"<-- 'technical debt' kind of things
highlight timelineLabelDEBT ctermfg=DarkYellow
syntax match timelineLabelNOTE "NOTE:"
highlight timelineLabelNOTE ctermfg=DarkCyan
syntax match timelineLabelCLEAN "CLEAN:"	"<-- consider deleting  such-marked data from the file.
highlight timelineLabelCLEAN ctermfg=DarkRed
"----
syntax match timelineLabel "DZIENNIK:"
syntax match timelineLabel "BACKLOG:"
syntax match timelineLabel "DIYINVESTING:"
syntax match timelineLabel "INWESTYCJA:"
"highlight link timelineLabel Label
highlight timelineLabel ctermfg=DarkCyan

"==== Comments:
syntax match timelineComment "\v#.*$"
highlight timelineComment ctermfg=DarkBlue

"==== Fnancial transaction:
syntax match timelineTransaction "\v^\$ .*$"
highlight timelineTransaction ctermfg=DarkGreen

"==== Linux command line statement:
syntax match timelineShellCommand "\v^\> .*$"
highlight timelineShellCommand ctermfg=DarkGreen

"==== Dates:
syntax match timelineDate "\v^(([1-9])|([12][0-9])|(30|31)) (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) [12][0-9][0-9][0-9]( #.*)?$"
highlight timelineDate ctermfg=DarkMagenta

"==== Conventional vim syntax script footer:
let b:current_syntax = "timeline"

