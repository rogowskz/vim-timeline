" syntax/timeline.vim
"
if exists("b:current_syntax")
    finish
endif


"----------------
syntax match tlLabel "DZIENNIK:"
syntax match tlLabel "BACKLOG:"
syntax match tlLabel "DIYINVESTING:"
syntax match tlLabel "INWESTYCJA:"
highlight link tlLabel Label

"----------------
syntax match tlComment "\v#.*$"
highlight link tlComment Comment

"----------------
syntax match tlTransaction "\v^\$ .*$"
highlight link tlTransaction Type

"----------------
syntax match tlDate "\v^[123]([0-9])? (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) [12][0-9][0-9][0-9]( #.*)?$"
highlight link tlDate Special


let b:current_syntax = "timeline"

