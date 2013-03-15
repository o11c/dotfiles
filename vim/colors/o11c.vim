""" This is basically a clone of the default 'dark' colorscheme,
""" but with certain settings copied from 'light'

""" It is expected that use use the CSApprox plugin for terminals.

set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = 'o11c'

"" default for everything
highlight       Normal          guifg=#ffffff guibg=#000000

"" set 'highlight' for Meta and special keys listed with ":map"
highlight       SpecialKey      guifg=#5f5fff guibg=NONE

"" set 'highlight' for '~' and '@' at the end of the window and characters from 'showbreak'
highlight       NonText         guifg=#0000ff guibg=NONE    gui=bold

"" set 'highlight' for directories in CTRL-D listing and other special things in listings
highlight       Directory       guifg=#5f5fff guibg=NONE

"" set 'highlight' for error messages
highlight       ErrorMsg        guifg=#ffffff guibg=#ff0000

"" set 'highlight' for 'incsearch' highlighting
highlight       IncSearch       guifg=NONE    guibg=NONE    gui=reverse

"" set 'highlight' for last search pattern highlighting (see 'hlsearch')
highlight       Search          guifg=#000000 guibg=#ffff00

"" set 'highlight' for more-prompt
highlight       MoreMsg         guifg=#5fff5f guibg=NONE    gui=bold

"" set 'highlight' for Mode (e.g., "-- INSERT --")
highlight       ModeMsg         guifg=NONE    guibg=NONE    gui=bold

"" set 'highlight' for line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
highlight       LineNr          guifg=#af5f00 guibg=NONE

"" set 'highlight' for when 'cursorline' is set.
highlight       CursorLineNr    guifg=#af5f00 guibg=NONE    gui=bold

"" set 'highlight' for hit-enter prompt and yes/no questions
highlight       Question        guifg=#5fff5f guibg=NONE    gui=bold

"" set 'highlight' for status line of current window
highlight       StatusLine      guifg=NONE    guibg=NONE    gui=bold,reverse

"" set 'highlight' for status lines of not-current windows
highlight       StatusLineNC    guifg=NONE    guibg=NONE    gui=reverse

"" set 'highlight' for Titles for output from ":set all", ":autocmd" etc.
highlight       VertSplit       guifg=NONE    guibg=NONE    gui=reverse

"" set 'highlight' for column used to separate vertically split windows
highlight       Title           guifg=#ff00ff guibg=NONE    gui=bold

"" set 'highlight' for Visual mode
highlight       Visual          guifg=NONE    guibg=#bebebe

""" set 'highlight' for Visual mode when Vim does is "Not Owning the Selection" Only X11 Gui's gui-x11 and xterm-clipboard.
highlight       VisualNOS       guifg=NONE    guibg=#afafaf

"" set 'highlight' for warning messages
highlight       WarningMsg      guifg=#ff8700 guibg=NONE

"" set 'highlight' for wildcard matches displayed for 'wildmenu'
highlight       WildMenu        guifg=#000000 guibg=#ffff00

"" set 'highlight' for line used for closed folds
highlight       Folded          guifg=#00d7ff guibg=#afafaf

"" set 'highlight' for 'foldcolumn'
highlight       FoldColumn      guifg=#00d7ff guibg=#d7d7d7

"" set 'highlight' for added line in diff mode
highlight       DiffAdd         guifg=NONE    guibg=#008700

"" set 'highlight' for changed line in diff mode
highlight       DiffChange      guifg=NONE    guibg=#878700

"" set 'highlight' for deleted line in diff mode
highlight       DiffDelete      guifg=#0000ff guibg=#870000 gui=bold

"" set 'highlight' for inserted text in diff mode
highlight       DiffText        guifg=NONE    guibg=#00af00 gui=bold

"" set 'highlight' for column used for signs
highlight       SignColumn      guifg=#00ffff guibg=#afafaf

"" set 'highlight' for the placeholders used for concealed characters (see 'conceallevel')
highlight       Conceal         guifg=#d7d7d7 guibg=#afafaf

"" set 'highlight' for misspelled word spell
highlight       SpellBad        guifg=NONE    guibg=#870000 gui=undercurl

"" set 'highlight' for word that should start with capital spell
highlight       SpellCap        guifg=NONE    guibg=#000087 gui=undercurl

"" set 'highlight' for rare word spell
highlight       SpellRare       guifg=NONE    guibg=#870087 gui=undercurl

"" set 'highlight' for word from other region spell
highlight       SpellLocal      guifg=NONE    guibg=#008787 gui=undercurl

"" set 'highlight' for popup menu normal line
highlight       Pmenu           guifg=NONE    guibg=#ff00ff

"" set 'highlight' for popup menu normal line
highlight       PmenuSel        guifg=NONE    guibg=#afafaf

"" set 'highlight' for popup menu scrollbar
highlight       PmenuSbar       guifg=NONE    guibg=#afafaf

"" set 'highlight' for popup menu scrollbar thumb
highlight       PmenuThumb      guifg=NONE    guibg=#ffffff

"" set 'highlight' for tab pages line, not active tab page label
highlight       TabLine         guifg=NONE    guibg=#afafaf gui=underline

"" set 'highlight' for tab pages line, active tab page label
highlight       TabLineSel      guifg=NONE    guibg=NONE    gui=bold

"" set 'highlight' for tab pages line, where there are no labels
highlight       TabLineFill     guifg=NONE    guibg=NONE    gui=reverse

"" set 'highlight' for the screen column that the cursor is in when 'cursorcolumn' is set
highlight       CursorColumn    guifg=NONE    guibg=#5f5f5f

"" set 'highlight' for the screen line that the cursor is in when 'cursorline' is set
highlight       CursorLine      guifg=NONE    guibg=#5f5f5f

"" set 'highlight' for the columns set with 'colorcolumn'
highlight       ColorColumn     guifg=NONE    guibg=#ff5f5f

"" set 'highlight' for The character under the cursor or just before it, if it is a paired bracket, and its match. pi_paren.txt
highlight       MatchParen      guifg=NONE    guibg=#00d7d7

""" Code highlighting

"" set 'highlight' for any comment
highlight       Comment         guifg=#8787ff guibg=NONE

"" set 'highlight' for any constant
highlight       Constant        guifg=#ff0000 guibg=NONE

"" set 'highlight' for any special symbol
highlight       Special         guifg=#ff00ff guibg=NONE

"" set 'highlight' for any variable name
highlight       Identifier      guifg=#5fffff guibg=NONE

"" set 'highlight' for any statement
highlight       Statement       guifg=#ffd700 guibg=NONE    gui=bold

"" set 'highlight' for generic Preprocessor
highlight       PreProc         guifg=#ff87ff guibg=NONE

"" set 'highlight' for int, long, char, etc.
highlight       Type            guifg=#5fff5f guibg=NONE

"" set 'highlight' for text that stands out, HTML links
highlight       Underlined      guifg=#0000ff guibg=NONE    gui=underline

"" set 'highlight' for left blank, hidden  hl-Ignore
highlight       Ignore          guifg=#000000 guibg=#000000

"" set 'highlight' for any erroneous construct
highlight       Error           guifg=#ffffff guibg=#ff0000

"" set 'highlight' for anything that needs extra attention; mostly the keywords TODO FIXME and XXX
highlight       Todo            guifg=#000000 guibg=#ffff00

"" The following are set by $VIMRUNTIME/syntax/syncolor.vim
"highlight link  String Constant
"highlight link  Character Constant
"highlight link  Number Constant
"highlight link  Boolean Constant
"highlight link  Float Number
"highlight link  Function Identifier
"highlight link  Conditional Statement
"highlight link  Repeat Statement
"highlight link  Label Statement
"highlight link  Operator Statement
"highlight link  Keyword Statement
"highlight link  Exception Statement
"highlight link  Include PreProc
"highlight link  Define PreProc
"highlight link  Macro PreProc
"highlight link  PreCondit PreProc
"highlight link  StorageClass Type
"highlight link  Structure Type
"highlight link  Typedef Type
"highlight link  Tag Special
"highlight link  SpecialChar Special
"highlight link  Delimiter Special
"highlight link  SpecialComment Special
"highlight link  Debug Special
