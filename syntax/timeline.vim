" syntax/timeline.vim
"
"==== Conventional vim syntax script header:
if exists("b:current_syntax")
    finish
endif

" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim

"==== Labels, from first column:
syntax match timelineLabelDONE	"\v^DONE:"	| highlight timelineLabelDONE	ctermfg=DarkCyan
syntax match timelineLabelDEBT	"\v^DEBT:"	| highlight timelineLabelDEBT	ctermfg=DarkYellow	| "<-- 'technical debt' kind of things
syntax match timelineLabelNOTE	"\v^\{?NOTE:"	| highlight timelineLabelNOTE	ctermfg=DarkCyan
syntax match timelineLabelREV	"\v^REVIEW:"	| highlight timelineLabelREV	ctermfg=DarkCyan
syntax match timelineLabelDEL   "\v^(CLEAN|DELETE|REMOVE|KILL):" | highlight timelineLabelDEL ctermfg=DarkRed	| "<-- consider deleting  such-marked data from the file.
syntax match timelineLabelOMIT  "\v^[ \t]*\[\.\.\.\]( .*)?$" | highlight timelineLabelOMIT ctermfg=Blue cterm=italic	| "<-- To mark deleted fragments of log listings, etc.
"==== Labels, from any column:
syntax match timelineLabelTODO	"\vTODO:(\~)?\!*.+$"	| highlight timelineLabelTODO	ctermfg=DarkRed
syntax match timelineLabelATTN	"\v\!(\!)+.+$"	| highlight timelineLabelATTN	ctermfg=DarkRed
syntax match timelineLabelSEE	"\vSEE:"	| highlight timelineLabelSEE	ctermfg=DarkCyan
"==== Labels, personal:
syntax match timelineLabel "\vBACKLOG:"
syntax match timelineLabel "\vBEZ_ROBOCIE:"
syntax match timelineLabel "\vDZIENNIK:"
syntax match timelineLabel "\vELVASTON:"
syntax match timelineLabel "\vEMERYTURA:"
syntax match timelineLabel "\vFINANSE:"
syntax match timelineLabel "\vINFOSKILLS:"
syntax match timelineLabel "\vINWESTYCJA:"
syntax match timelineLabel "\vLINUX:"
syntax match timelineLabel "\vMUZYKA:"
syntax match timelineLabel "\vNOWINIARSKA:"
syntax match timelineLabel "\vPODRÓŻE:"
syntax match timelineLabel "\vWOJSKO:"
"highlight link timelineLabel Label
highlight timelineLabel ctermfg=DarkCyan

"==== Block markers:
syntax match timelineMarkBegin	"\v\{?BEGIN\>+"	| highlight timelineMarkBegin	ctermfg=DarkGreen
syntax match timelineMarkEnd	"\v\<+END\}?"	| highlight timelineMarkEnd	ctermfg=DarkGreen

"==== URL:
syntax match timelineUrl "\vhttp(s)?://[^ \t]+" | highlight timelineUrl ctermfg=Blue 

"==== Comments:
syntax match timelineComment "\v#.*$"
highlight timelineComment ctermfg=Blue

"==== Fnancial transaction:
syntax match timelineTransaction "\v^\$\$ .+$"
highlight timelineTransaction ctermfg=DarkGreen

"==== Linux command line statement:
syntax match timelineShellCommand "\v^[ \t]*\$ .+$"
highlight timelineShellCommand ctermfg=DarkGreen

"==== Dates:
syntax match timelineDate "\v^(([1-9])|([12][0-9])|(30|31)) (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) [12][0-9][0-9][0-9]( #.*)?$"
highlight timelineDate ctermfg=DarkMagenta

"==== Conventional vim syntax script footer:
let b:current_syntax = "timeline"

