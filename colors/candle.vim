set background=dark
hi clear
syntax reset

let g:colors_name = 'candle'

if !has('gui_running') && &t_Co != 88 && &t_Co != 256
  exit
endif


"=== Default highlighting groups
"==============================================================================================
call candle#highlight('ColorColumn', '', 'line', 'none')
" call candle#highlight('Conceal', '', '', '') " TODO
call candle#highlight('CursorColumn', '', 'line', 'none')
call candle#highlight('CursorLine', '', 'line', 'none')
call candle#highlight('CursorLineNr', 'comment', 'line', 'none')
call candle#highlight('DiffAdd', 'green', 'background', 'none')
call candle#highlight('DiffChange', 'purple', 'background', 'none')
call candle#highlight('DiffDelete', 'red', 'background', 'none')
call candle#highlight('DiffText', 'blue', 'background', 'none')
call candle#highlight('Directory', 'blue', '', 'none')
call candle#highlight('ErrorMsg', 'background', 'red', 'standout')
call candle#highlight('FoldColumn', 'foreground', 'background', 'standout')
call candle#highlight('Folded', 'comment', 'background', 'underline')
" call candle#highlight('IncSearch', '', '', 'reverse') " TODO
call candle#highlight('LineNr', 'comment', '', 'none')
call candle#highlight('MatchParen', '', 'selection', 'none')
call candle#highlight('ModeMsg', 'green', '', 'bold')
call candle#highlight('MoreMsg', 'green', '', 'bold')
call candle#highlight('NonText', 'selection', '', 'none')
call candle#highlight('Normal', 'foreground', 'background', '')
call candle#highlight('Pmenu', 'foreground', 'selection', 'none')
" call candle#highlight('PmenuSbar', '', '', '') " TODO
call candle#highlight('PmenuSel', 'foreground', 'selection', 'reverse')
" call candle#highlight('PmenuThumb', '', '', '') " TODO
call candle#highlight('Question', 'green', '', 'standout')
" call candle#highlight('QuickFixLine', '', '', '') " TODO
call candle#highlight('Search', 'yellow', 'background', 'reverse,underline')
call candle#highlight('SignColumn', 'foreground', 'background', 'none')
call candle#highlight('SpecialKey', 'line', '', 'bold')
call candle#highlight('SpellBad', 'red', '', 'undercurl')
call candle#highlight('SpellCap', 'blue', '', 'undercurl')
call candle#highlight('SpellLocal', 'aqua', '', 'undercurl')
call candle#highlight('SpellRare', 'purple', '', 'undercurl')
call candle#highlight('StatusLine', 'window', 'comment', 'reverse')
call candle#highlight('StatusLineNC', 'window', 'window', 'reverse')
" call candle#highlight('StatusLineTerm', '', '', '') " TODO
" call candle#highlight('StatusLineTermNC', '', '', '') " TODO
call candle#highlight('TabLine', 'window', 'comment', 'reverse')
call candle#highlight('TabLineFill', 'window', 'comment', 'reverse')
call candle#highlight('TabLineSel', 'window', 'foreground', 'none')
call candle#highlight('Title', 'foreground', '', 'bold')
call candle#highlight('VertSplit', 'window', 'window', 'none')
call candle#highlight('Visual', '', 'selection', 'none')
call candle#highlight('WarningMsg', 'red', '', 'standout')
call candle#highlight('WildMenu', 'background', 'yellow', 'standout')

if has('gui_running')
  call candle#highlight('DiffAdd', 'green', 'dark_green', 'none')
  call candle#highlight('DiffChange', 'purple', 'dark_purple', 'none')
  call candle#highlight('DiffDelete', 'red', 'dark_red', 'none')
  call candle#highlight('DiffText', 'blue', 'dark_blue', 'none')
  call candle#highlight('Search', 'yellow', 'dark_yellow', 'reverse,underline')
endif


"=== Syntax
"==============================================================================================
call candle#highlight('Comment', 'comment', '', 'none')

call candle#highlight('Constant', 'yellow', '', 'none')
call candle#highlight('String', 'green', '', '')
call candle#highlight('Character', 'orange', '', '')
call candle#highlight('Number', 'orange', '', '')
call candle#highlight('Boolean', 'orange', '', '')
call candle#highlight('Float', 'orange', '', '')

call candle#highlight('Identifier', 'blue', '', 'none')
call candle#highlight('Function', 'blue', '', '')

call candle#highlight('Statement', 'purple', '', 'bold')
call candle#highlight('Conditional', 'purple', '', '')
call candle#highlight('Repeat', 'purple', '', '')
call candle#highlight('Label', 'purple', '', '')
call candle#highlight('Operator', 'aqua', '', 'none')
call candle#highlight('Keyword', 'purple', '', '')
call candle#highlight('Exception', 'purple', '', '')

call candle#highlight('PreProc', 'purple', '', 'none')
call candle#highlight('Include', 'blue', '', '')
call candle#highlight('Define', 'purple', '', '')
call candle#highlight('Macro', 'purple', '', '')
call candle#highlight('PreCondit', 'purple', '', '')

call candle#highlight('Type', 'yellow', '', 'none')
call candle#highlight('StorageClass', 'purple', '', '')
call candle#highlight('Structure', 'purple', '', '')
call candle#highlight('Typedef', 'purple', '', '')

call candle#highlight('Special', 'foreground', '', 'none')
call candle#highlight('SpecialChar', 'purple', '', '')
" call candle#highlight('Tag', '', '', '') " TODO
" call candle#highlight('Delimiter', '', '', '') " TODO
call candle#highlight('SpecialComment', 'green', '', '')
" call candle#highlight('Debug', '', '', '') " TODO

call candle#highlight('Underlined', 'blue', '', 'underline')
call candle#highlight('Error', 'background', 'red', 'reverse')
call candle#highlight('Todo', 'background', 'comment', 'none')


"=== vim
"==============================================================================================
call candle#highlight('vimCommand', 'red', '', 'none')


"=== objc
"==============================================================================================
call candle#highlight('cocoaClass', 'yellow', '', '')
call candle#highlight('objcConstant', 'yellow', '', '')
call candle#highlight('objcDirective', 'aqua', '', '')
call candle#highlight('objcMethodColon', 'red', '', '')
call candle#highlight('objcObjDef', 'purple', '', '')
call candle#highlight('objcProtocolList', 'aqua', '', '')
call candle#highlight('objcSubclass', 'yellow', '', '')
call candle#highlight('objcSuperclass', 'yellow', '', '')


"=== php
"==============================================================================================
call candle#highlight('phpMemberSelector', 'foreground', '', '')
call candle#highlight('phpVarSelector', 'red', '', '')


"=== ruby
"==============================================================================================
call candle#highlight('rubyAttribute', 'foreground', '', '')
call candle#highlight('rubyConstant', 'yellow', '', '')
call candle#highlight('rubyCurlyBlock', 'foreground', '', '')
call candle#highlight('rubyLocalVariableOrMethod', 'blue', '', '')
call candle#highlight('rubyRegexp', 'aqua', '', '')
call candle#highlight('rubyRegexpAnchor', 'aqua', '', '')
call candle#highlight('rubyRegexpCharClass', 'aqua', '', '')
call candle#highlight('rubyRegexpDelimiter', 'aqua', '', '')
call candle#highlight('rubyRegexpDot', 'aqua', '', '')
call candle#highlight('rubyRegexpEscape', 'aqua', '', '')
call candle#highlight('rubyRegexpSpecial', 'aqua', '', '')
call candle#highlight('rubyStringDelimiter', 'green', '', '')
call candle#highlight('rubySymbol', 'red', '', '')

if has('gui_running')
  call candle#highlight('rubyRegexpAnchor', 'dark_aqua', '', '')
  call candle#highlight('rubyRegexpDot', 'dark_aqua', '', '')
  call candle#highlight('rubyRegexpEscape', 'dark_aqua', '', '')
endif


"=== coffee
"==============================================================================================
call candle#highlight('coffeeCurlies', 'foreground', '', '')
call candle#highlight('coffeeObjAssign', 'red', '', '')
call candle#highlight('coffeeObject', 'yellow', '', '')


"=== javascript
"==============================================================================================
call candle#highlight('javaScriptBraces', 'foreground', '', '')
call candle#highlight('javaScriptFunction', 'purple', '', '')
call candle#highlight('javaScriptMember', 'foreground', '', '')
call candle#highlight('javaScriptNumber', 'orange', '', '')
call candle#highlight('javaScriptSpecial', 'purple', '', '')


"=== css
"==============================================================================================
call candle#highlight('cssAttr', 'red', '', '')
call candle#highlight('cssAttributeSelector', 'purple', '', '')
call candle#highlight('cssBraces', 'foreground', '', '')
call candle#highlight('cssClassName', 'blue', '', '')
call candle#highlight('cssColor', 'orange', '', '')
call candle#highlight('cssFunctionName', 'aqua', '', '')
call candle#highlight('cssIdentifier', 'red', '', '')
call candle#highlight('cssImportant', 'red', '', '')
call candle#highlight('cssProp', 'red', '', '')
call candle#highlight('cssUnitDecorators', 'foreground', '', '')


"=== scss
"==============================================================================================
call candle#highlight('scssElseIf', 'purple', '', '')
call candle#highlight('scssFor', 'purple', '', '')


"=== html
"==============================================================================================
call candle#highlight('htmlArg', 'red', '', '')
call candle#highlight('htmlEndTag', 'comment', '', '')
call candle#highlight('htmlLink', 'blue', '', 'underline')
call candle#highlight('htmlScriptTag', 'comment', '', '')
call candle#highlight('htmlSpecialTagName', 'orange', '', '')
call candle#highlight('htmlTag', 'comment', '', '')
call candle#highlight('htmlTagN', 'orange', '', '')
call candle#highlight('htmlTagName', 'orange', '', '')


"=== xml
"==============================================================================================
call candle#highlight('xmlAttrib', 'red', '', '')
call candle#highlight('xmlEndTag', 'orange', '', '')
call candle#highlight('xmlEqual', 'comment', '', '')
call candle#highlight('xmlTag', 'comment', '', '')
call candle#highlight('xmlTagName', 'orange', '', '')


"=== markdown
"==============================================================================================
call candle#highlight('markdownBold', 'red', '', '')
call candle#highlight('markdownCode', 'green', '', '')
call candle#highlight('markdownCodeBlock', 'green', '', '')
call candle#highlight('markdownH1', 'purple', '', '')
call candle#highlight('markdownH2', 'purple', '', '')
call candle#highlight('markdownH3', 'purple', '', '')
call candle#highlight('markdownH4', 'purple', '', '')
call candle#highlight('markdownH5', 'purple', '', '')
call candle#highlight('markdownH6', 'purple', '', '')
call candle#highlight('markdownHeadingDelimiter', 'purple', '', '')
call candle#highlight('markdownItalic', 'red', '', '')
call candle#highlight('markdownLineBreak', '', 'blue', '')
call candle#highlight('markdownListMarker', 'orange', '', '')
call candle#highlight('markdownUrl', 'comment', '', '')
