" syntax/timeline.vim
"
if exists("b:current_syntax")
    finish
endif

" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim

"----------------
syntax match timelineLabel "DZIENNIK:"
syntax match timelineLabel "BACKLOG:"
syntax match timelineLabel "DIYINVESTING:"
syntax match timelineLabel "INWESTYCJA:"
"highlight link timelineLabel Label
highlight timelineLabel ctermfg=DarkCyan

"----------------
syntax match timelineComment "\v#.*$"
highlight timelineComment ctermfg=DarkBlue

"----------------
syntax match timelineTransaction "\v^\$ .*$"
highlight timelineTransaction ctermfg=DarkGreen

"----------------
syntax match timelineDate "\v^(([1-9])|([12][0-9])|(30|31)) (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) [12][0-9][0-9][0-9]( #.*)?$"
highlight timelineDate ctermfg=DarkMagenta


let b:current_syntax = "timeline"

