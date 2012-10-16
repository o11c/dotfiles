" Vim syntax file
" Language: TMWA Magic v1.5
" Maintainer: o11c
" Latest Revision: 2012-10-07

if exists("b:current_syntax")
    finish
endif
let b:current_syntax = "sex"

"syn region sexDisabled start='(DISABLED' end=')' contains=sexTopLevel
"syn cluster sexTopLevel contains=sexAssignment,sexConst,sexProcedure,sexSpell,sexStringComment
"syn region sexAssignment start='(SET' end=')'
"syn region sexConst start='(CONST' end=')'
"syn region sexProcedure start='(PROCEDURE' end=')'
"syn region sexSpell start='(SPELL' end=')'
"syn region sexStringComment start='"' end='"' contains=sexStringBackslash
"syn match sexStringBackslash '\\[abefnrtv\\"]' contained
"syn match sexStringBackslash '\\x\x\x' contained
"
"hi def link sexDisabled Comment
"hi def link sexStringComment Comment
"hi def link sexTopLevel PreProc

"" useful targets:
"" Comment
"" Constant
"" Special
"" Identifier
"" Statement
"" PreProc
"" Type
"" Error
"" Todo


" Keywords
" Obsolete keywords
syn keyword sexObsoleteKeywords THEN ELSE DO IN TO
syn match   sexObsoleteKeywords ' \@<== \@='
" Not actually an obsolete keyword, but should be highlighted the same
" since it represents obsolete code
syn keyword sexObsoleteKeywords DISABLED
" Old keywords
syn keyword sexTopLevelKeywords PROCEDURE CALL OR TOWARDS TELEPORT-ANCHOR SILENT LOCAL NONMAGIC SPELL LET END => STRING REQUIRE CATALYSTS COMPONENTS MANA CASTTIME SKIP ABORT BREAK EFFECT ATEND ATTRIGGER CONST PC NPC MOB ENTITY IF FOREACH FOR WAIT
syn match   sexObsoleteKeywords '<>'
syn match   sexTopLevelKeywords '=>'
syn match   sexTopLevelKeywords '@+\?'
" New keywords
syn keyword sexTopLevelKeywords SET SCRIPT BLOCK
" Things that return a value
syn match sexFunctionExpressions '+\|-\|\*\|/\|%\|||\|&&\|<\|>\|<=\|>=\|==\|!=\||\|&\|^\|<<\|>>'
syn keyword sexFunctionExpressions not neg max min is_in if_then_else skill str agi vit dex luk int level mdef def hp max_hp sp max_sp dir name_of mob_id location random random_dir hash_entity is_married partner awayfrom failed pc npc distance rdistance anchor random_location script_int rbox count_item line_of_sight running_status_update status_option element element_level has_shroud is_equipped spell_index is_exterior contains_string strstr strlen substr sqrt map_level map_nr dir_towards is_dead is_pc extract_healer_experience
" Things that do something
syn keyword sexStatements sfx instaheal shroud unshroud message messenger_npc move warp banish status_change stop_status_change override_attack create_item aggravate spawn injure emote set_script_variable set_hair_colour set_hair_style drop_item drop_item_for gain_experience

syn match sexInt '\<\d\+' display " contained
syn match sexInt '\<0x\x\+' display "contained
syn match sexBackslashes '\\[abefnrtv\\"]' contained
syn match sexBackslashes '\\x\x\x' contained
syn region sexString start='"' end='"' skip='\\"' contains=sexBackslashes
syn region sexList start='(' end=')' fold transparent

hi def link sexTopLevelKeywords Type
hi def link sexFunctionExpressions Statement " Not really
hi def link sexStatements Special
hi def link sexString Constant
hi def link sexBackslashes Special
hi def link sexInt Constant
hi def link sexObsoleteKeywords Todo
