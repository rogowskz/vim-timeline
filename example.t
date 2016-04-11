
The 'timeline' text file format is designed to facilitate the creation of your various date-based notes.
For example: your work logs, your budgetary notes, personal diaries, and alike.

The conventional file extension is: .t .T 
and files with these extensions will be automatically recognized and syntax-colored by Vim,
but you can also set the 'timeline' filetype in vim for any textual file by using:
	:set filetype=timeline

The 'timeline' syntax coloring provides various ways of making your notes easier to read and navigate:

Desired places in your text can be made more visible # by using a 'hash' as a comment character
# which can begin
    # in any column
################################

To draw attention to a specific place in your text !! you can use double exclamation marks.

You can place dates in your timeline file...

12 Apr 2016
13 Apr 2016
	... and put your other text between them.
(which can begin 
			in any column)

But: !! A date must begin in the first column of the text:
14 Apr 2016
    or otherwise...
    15 Apr 2016 <-- !! ...is not matched as a date.

17 Apr 2016 # A date can have its own comment
which most often is useful to mark weekend days and other holidays:
7 Oct 2016
8 Oct 2016 # Sat
9 Oct 2016 # Sun
10 Oct 2016 # STAT: Canadian Thankshiving
11 Oct 2016

#-- The following labels are useful to structure typical 'engineering work log' notes:
TODO: Describe something to do here.
DONE: Describe what has been done.
	(preferably, in between dates, to locate you achievement in time)
DEBT: The 'technical debt' stuff.
NOTE: Useful tidbits of gained knowledge
	can be marked with this label
	for easier reference and finding later.

    !! Caution!: these labels must begin in the first column to be recognized:
    DONE: This is done.
    DEBT: The 'technical debt' stuff.
    NOTE: Some note here.
    On the other hand: the TODO: label can begin in any column
    !! But: the 'TODO:' label is not matched if tere are no characters (even blanks) after the colon:
    TODO:




