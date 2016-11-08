" The colours of today... today!
" 
" For truecolor terminals / vim loadouts.
" set termguicolors is mandatory
"
" Inspired by and based on the wonderful Base 16:
"   base16-vim (https://github.com/chriskempson/base16-vim)
"   by Chris Kempson (http://chriskempson.com)
" Theme setup
"
hi clear
syntax reset
let g:colors_name = "base-1e6-default"

" Highlighting function
fun <sid>hi(group, guifg, guibg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfun

" Vim editor colors
let s:white = "#ffffff"
let s:grey  = "#888888"
let s:black = "#000000"
let s:dark_00 = "#1c1c1c"
let s:dark_01 = "#282828"
let s:dark_02 = "#383838"
let s:dark_03 = "#484848"
let s:dark_04 = "#585858"
let s:light_00 = "#a8a8a8"
let s:light_01 = "#b8b8b8"
let s:light_02 = "#c8c8c8"
let s:light_03 = "#d8d8d8"
let s:light_04 = "#e8e8e8"

" [tone, color, desat, tint, shade]
let s:color_00 = ["#bf738c", "#bf3965", "", "", ""]
let s:color_ErrorMsg  = s:color_00[1]
let s:color_Exception = s:color_00[0]
let s:color_01 = ["#bf6956", "#bf4626", "#bf978f", "", ""]
let s:color_Statement = s:color_01[0]
let s:color_Keyword   = s:color_01[0]
let s:color_Delimiter = s:color_01[2]
let s:color_02 = ["#dc9656", "#dc8c42", "#dcba9a"]
let s:color_Repeat      = s:color_02[0]
let s:color_Conditional = s:color_02[0]
let s:color_Operator    = s:color_02[2]
let s:color_03 = ["#f7ca88"]
let s:color_Function  = s:color_03[0]
let s:color_Label     = s:color_03[0]
let s:color_PreProc   = s:color_03[0]
let s:color_04 = ["#bfbb75", "", "#cccaa3"]
let s:color_String = s:color_04[0]
let s:color_05 = ["#99bf77"]
let s:color_Character   = s:color_05[0]
let s:color_06 = ["#7bba86", "", "#acc7ae"]
let s:color_SpecialChar = s:color_06[0]
let s:color_07 = ["#86c1b9"]
let s:color_Special = s:color_07[0]
let s:color_08 = ["#7cafc2"]
let s:color_Float  = s:color_08[0]
let s:color_Number = s:color_08[0]
let s:color_09 = ["#8098c4", "", "#b1b8c4"]
let s:color_Constant = s:color_09[0]
let s:color_Boolean  = s:color_09[0]
let s:color_Builtin  = s:color_09[0]
let s:color_0a = ["#988abd", "",  "#a49bbd"]
let s:color_Structure    = s:color_0a[0]
let s:color_Type         = s:color_0a[0]
let s:color_ExceptionObj = s:color_0a[0]
let s:color_0b = ["#ba8baf"]
let s:color_Include = s:color_0b[0]

let s:color_Identifier = s:light_03

let s:color_Error = s:color_00[1]
let s:color_ErrorMsg = s:color_00[1]
let s:color_Debug = s:color_00[1]    

call <sid>hi("Bold",          "", "", "bold", "")
call <sid>hi("Debug",         s:color_01[0], "", "", "")
call <sid>hi("Directory",     s:color_08[0], "", "", "")
call <sid>hi("Error",         s:dark_00, s:color_Error, "", "")
call <sid>hi("ErrorMsg",      s:color_ErrorMsg, s:dark_01, "", "")
call <sid>hi("Exception",     s:color_Exception, "", "", "")

call <sid>hi("Folded",        s:dark_03, s:dark_01, "", "")
call <sid>hi("FoldColumn",    s:color_0a[2], s:dark_01, "", "")
call <sid>hi("IncSearch",     s:dark_01, s:color_03[0], "none", "")
call <sid>hi("Italic",        "", "", "none", "")
call <sid>hi("Macro",         s:color_01[0], "", "", "")
call <sid>hi("MatchParen",    s:dark_00, s:grey,  "", "")
call <sid>hi("ModeMsg",       s:color_05[0], "", "", "")
call <sid>hi("MoreMsg",       s:color_05[0], "", "", "")
call <sid>hi("Question",      s:color_08[0], "", "", "")
call <sid>hi("Search",        s:dark_01, s:color_03[0],  "", "")
call <sid>hi("SpecialKey",    s:grey, "", "", "")
call <sid>hi("TooLong",       s:color_01[0], "", "", "")
call <sid>hi("Underlined",    s:color_01[0], "", "", "")
call <sid>hi("Visual",        "", s:dark_02, "", "")
call <sid>hi("VisualNOS",     s:color_01[0], "", "", "")
call <sid>hi("WarningMsg",    s:color_01[0], "", "", "")
call <sid>hi("WildMenu",      s:color_01[0], s:color_03[0], "", "")
call <sid>hi("Title",         s:color_08[0], "", "none", "")
call <sid>hi("Conceal",       s:color_08[0], s:dark_00, "", "")
call <sid>hi("Cursor",        s:dark_00, s:light_02, "", "")
call <sid>hi("NonText",       s:grey, "", "", "")
call <sid>hi("Normal",        s:light_02, s:dark_00, "", "")
call <sid>hi("LineNr",        s:grey, s:dark_02, "", "")
call <sid>hi("SignColumn",    s:grey, s:dark_01, "", "")
call <sid>hi("StatusLine",    s:light_01, s:dark_02, "none", "")
call <sid>hi("StatusLineNC",  s:grey, s:dark_01, "none", "")
call <sid>hi("VertSplit",     s:dark_02, s:dark_02, "none", "")
call <sid>hi("ColorColumn",   "", s:dark_02, "none", "")
call <sid>hi("CursorColumn",  "", s:dark_01, "none", "")
call <sid>hi("CursorLine",    "", s:dark_01, "none", "")
call <sid>hi("CursorLineNr",  s:grey, s:dark_01, "", "")
call <sid>hi("PMenu",         s:light_01, s:dark_01, "none", "")
call <sid>hi("PMenuSel",      s:dark_01, s:light_01, "", "")
call <sid>hi("TabLine",       s:grey, s:dark_01, "none", "")
call <sid>hi("TabLineFill",   s:grey, s:dark_01, "none", "")
call <sid>hi("TabLineSel",    s:color_05[0], s:dark_01, "none", "")

" TODO:
call <sid>hi("Comment",      s:dark_04, "", "", "")
call <sid>hi("Define",       s:color_0a[0], "", "none", "")
call <sid>hi("Tag",          s:color_03[0], "", "", "")

" TODO: desatu30rate docstrings
call <sid>hi("Structure",    s:color_Structure, "", "bold", "")
call <sid>hi("Include",      s:color_Include, "", "bold", "")
call <sid>hi("Delimiter",    s:color_Delimiter, "", "", "")
call <sid>hi("Type",         s:color_Type, "", "bold", "")
call <sid>hi("ConId",        s:color_Type, "", "bold", "")
call <sid>hi("Statement",    s:color_Statement, "", "bold", "")
call <sid>hi("Keyword",      s:color_Keyword, "", "bold", "")
call <sid>hi("StorageClass", s:color_Keyword, "", "bold", "")
call <sid>hi("Repeat",       s:color_Repeat, "", "bold", "")
call <sid>hi("Operator",     s:color_Operator, "", "bold", "")
call <sid>hi("Conditional",  s:color_Conditional, "", "bold", "")
call <sid>hi("Label",        s:color_Label, "", "bold", "")
call <sid>hi("PreProc",      s:color_PreProc, "", "", "")
call <sid>hi("Todo",         s:color_PreProc, s:dark_00, "underline", "")
" TODO: move redward
call <sid>hi("Function",     s:color_Function, "", "", "")
call <sid>hi("Identifier",   s:color_Identifier, "", "none", "")
call <sid>hi("String",       s:color_String, "", "", "")
call <sid>hi("Character",    s:color_Character, "", "", "")
call <sid>hi("SpecialChar",  s:color_SpecialChar, "", "bold", "")
call <sid>hi("Special",      s:color_Special, "", "", "")
call <sid>hi("Float",        s:color_Float, "", "", "")
call <sid>hi("Number",       s:color_Number, "", "bold", "")
call <sid>hi("Constant",     s:color_Constant, "", "bold", "")
call <sid>hi("Boolean",      s:color_Boolean, "", "", "")

" Python highlighting
call <sid>hi("pythonEscape",       s:color_SpecialChar, "", "bold", "")
call <sid>hi("pythonBuiltin",      s:color_Builtin, "", "", "")
call <sid>hi("pythonExceptions",   s:color_ExceptionObj, "", "", "")
call <sid>hi("pythonException",    s:color_Exception, "", "bold", "")

" Haskell highlighting
call <sid>hi("hsDelimiter",    s:color_Delimiter, "", "bold", "")


" C highlighting
call <sid>hi("cOperator",   s:color_Operator, "", "", "")
call <sid>hi("cPreCondit",  s:color_0a[0], "", "", "")

" C# highlighting
call <sid>hi("csClass",                 s:color_03[0], "", "", "")
call <sid>hi("csAttribute",             s:color_03[0], "", "", "")
call <sid>hi("csModifier",              s:color_0a[0], "", "", "")
call <sid>hi("csType",                  s:color_01[0], "", "", "")
call <sid>hi("csUnspecifiedStatement",  s:color_08[0], "", "", "")
call <sid>hi("csContextualStatement",   s:color_0a[0], "", "", "")
call <sid>hi("csNewDecleration",        s:color_01[0], "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:light_02, "", "", "")
call <sid>hi("cssClassName",   s:color_0a[0], "", "", "")
call <sid>hi("cssColor",       s:color_07[0], "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:color_05[0], s:dark_01, "", "")
call <sid>hi("DiffChange",   s:grey, s:dark_01, "", "")
call <sid>hi("DiffDelete",   s:color_01[0], s:dark_01, "", "")
call <sid>hi("DiffText",     s:color_08[0], s:dark_01, "", "")
call <sid>hi("DiffAdded",    s:color_05[0], s:dark_00, "", "")
call <sid>hi("DiffFile",     s:color_01[0], s:dark_00, "", "")
call <sid>hi("DiffNewFile",  s:color_05[0], s:dark_00, "", "")
call <sid>hi("DiffLine",     s:color_08[0], s:dark_00, "", "")
call <sid>hi("DiffRemoved",  s:color_01[0], s:dark_00, "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:color_01[0], "", "", "")
call <sid>hi("gitCommitSummary",   s:color_05[0], "", "", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:color_05[0], s:dark_01, "", "")
call <sid>hi("GitGutterChange",  s:color_08[0], s:dark_01, "", "")
call <sid>hi("GitGutterDelete",  s:color_01[0], s:dark_01, "", "")
call <sid>hi("GitGutterChangeDelete",  s:color_0a[0], s:dark_01, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:color_03[0], "", "", "")
call <sid>hi("htmlItalic",  s:color_0a[0], "", "", "")
call <sid>hi("htmlEndTag",  s:light_02, "", "", "")
call <sid>hi("htmlTag",     s:light_02, "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:light_02, "", "", "")
call <sid>hi("javaScriptBraces",  s:light_02, "", "", "")
call <sid>hi("javaScriptNumber",  s:color_02[0], "", "", "")

" Mail highlighting
call <sid>hi("mailQuoted1",  s:color_03[0], "", "", "")
call <sid>hi("mailQuoted2",  s:color_05[0], "", "", "")
call <sid>hi("mailQuoted3",  s:color_0a[0], "", "", "")
call <sid>hi("mailQuoted4",  s:color_07[0], "", "", "")
call <sid>hi("mailQuoted5",  s:color_08[0], "", "", "")
call <sid>hi("mailQuoted6",  s:color_03[0], "", "", "")
call <sid>hi("mailURL",      s:color_08[0], "", "", "")
call <sid>hi("mailEmail",    s:color_08[0], "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:color_05[0], "", "", "")
call <sid>hi("markdownError",             s:light_02, s:dark_00, "", "")
call <sid>hi("markdownCodeBlock",         s:color_05[0], "", "", "")
call <sid>hi("markdownHeadingDelimiter",  s:color_08[0], "", "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:color_08[0], "", "", "")
call <sid>hi("NERDTreeExecFile",  s:light_02, "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:light_02, "", "", "")
call <sid>hi("phpComparison",      s:light_02, "", "", "")
call <sid>hi("phpParent",          s:light_02, "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:color_08[0], "", "", "")
call <sid>hi("rubyConstant",                s:color_03[0], "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:color_01[2], "", "", "")
call <sid>hi("rubyRegexp",                  s:color_07[0], "", "", "")
call <sid>hi("rubySymbol",                  s:color_05[0], "", "", "")
call <sid>hi("rubyStringDelimiter",         s:color_05[0], "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:color_01[0], "", "", "")
call <sid>hi("sassClassChar",  s:color_02[0], "", "", "")
call <sid>hi("sassInclude",    s:color_0a[0], "", "", "")
call <sid>hi("sassMixing",     s:color_0a[0], "", "", "")
call <sid>hi("sassMixinName",  s:color_08[0], "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:color_05[0], s:dark_01, "", "")
call <sid>hi("SignifySignChange",  s:color_08[0], s:dark_01, "", "")
call <sid>hi("SignifySignDelete",  s:color_01[0], s:dark_01, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:dark_00, "undercurl", s:color_01[0])
call <sid>hi("SpellLocal",   "", s:dark_00, "undercurl", s:color_07[0])
call <sid>hi("SpellCap",     "", s:dark_00, "undercurl", s:color_08[0])
call <sid>hi("SpellRare",    "", s:dark_00, "undercurl", s:color_0a[0])

" Remove functions
delf <sid>hi
