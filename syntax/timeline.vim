" syntax/timeline.vim
"
if exists("b:current_syntax")
    finish
endif

syntax match tlLabel "DZIENNIK:"
syntax match tlLabel "BACKLOG:"
syntax match tlLabel "DIYINVESTING:"
syntax match tlLabel "INWESTYCJA:"

highlight link tlLabel Label

syntax match tlComment "\v#.*$"
highlight link tlComment Comment


let b:current_syntax = "timeline"

