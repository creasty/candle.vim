set background=dark
hi clear
syntax reset

let g:colors_name = 'candle'

if !has('gui_running') && &t_Co != 88 && &t_Co != 256
  exit
endif


"=== General
"==============================================================================================
call candle#highlight('CursorLineNr', 'comment', 'line', 'none')
call candle#highlight('Directory', 'blue', '', '')
call candle#highlight('Error', 'background', 'red', '')
call candle#highlight('ErrorMsg', 'background', 'red', '')
call candle#highlight('FoldColumn', '', 'background', '')
call candle#highlight('Folded', 'comment', 'background', '')
call candle#highlight('LineNr', 'comment', '', 'none')
call candle#highlight('MatchParen', '', 'selection', '')
call candle#highlight('ModeMsg', 'green', '', '')
call candle#highlight('MoreMsg', 'green', '', '')
call candle#highlight('NonText', 'selection', '', '')
call candle#highlight('Normal', 'foreground', 'background', '')
call candle#highlight('Question', 'green', '', '')
call candle#highlight('Search', 'yellow', '', 'underline')
call candle#highlight('SpecialKey', 'line', '', '')
call candle#highlight('StatusLine', 'window', 'comment', 'reverse')
call candle#highlight('StatusLineNC', 'window', 'window', '')
call candle#highlight('TabLine', 'window', 'comment', 'reverse')
call candle#highlight('TabLineFill', 'window', 'comment', 'reverse')
call candle#highlight('TabLineSel', 'window', 'foreground', '')
call candle#highlight('VertSplit', 'window', 'window', 'none')
call candle#highlight('Visual', '', 'selection', '')
call candle#highlight('WarningMsg', 'red', '', '')
call candle#highlight('WildMenu', 'background', 'yellow', '')

if version >= 700
  call candle#highlight('CursorColumn', '', 'line', 'none')
  call candle#highlight('CursorLine', '', 'line', 'none')
  call candle#highlight('PMenu', 'foreground', 'selection', 'none')
  call candle#highlight('PMenuSel', 'foreground', 'selection', 'reverse')
  call candle#highlight('SignColumn', '', 'background', 'none')
end

if version >= 703
  call candle#highlight('ColorColumn', '', 'line', 'none')
end


"=== Basic
"==============================================================================================
call candle#highlight('Comment', 'comment', '', '')

call candle#highlight('Boolean', 'orange', '', '')
call candle#highlight('Character', 'orange', '', '')
call candle#highlight('Constant', 'yellow', '', '')
call candle#highlight('Float', 'orange', '', '')
call candle#highlight('Number', 'orange', '', '')
call candle#highlight('String', 'green', '', '')

call candle#highlight('Function', 'blue', '', '')
call candle#highlight('Identifier', 'blue', '', 'none')

call candle#highlight('Conditional', 'purple', '', '')
call candle#highlight('Exception', 'purple', '', '')
call candle#highlight('Keyword', 'purple', '', '')
call candle#highlight('Label', 'purple', '', '')
call candle#highlight('Operator', 'aqua', '', 'none')
call candle#highlight('Repeat', 'purple', '', '')
call candle#highlight('Statement', 'purple', '', '')

call candle#highlight('Define', 'purple', '', 'none')
call candle#highlight('Include', 'blue', '', '')
call candle#highlight('Macro', 'purple', '', '')
call candle#highlight('PreCondit', 'purple', '', '')
call candle#highlight('PreProc', 'purple', '', '')

call candle#highlight('StorageClass', 'purple', '', '')
call candle#highlight('Structure', 'purple', '', '')
call candle#highlight('Type', 'yellow', '', 'none')
call candle#highlight('Typedef', 'purple', '', '')

call candle#highlight('Folded', 'comment', '', 'underline')
call candle#highlight('Special', 'foreground', '', '')
call candle#highlight('SpecialChar', 'purple', '', '')
call candle#highlight('SpecialComment', 'green', '', '')
call candle#highlight('Title', 'foreground', '', '')
call candle#highlight('Todo', 'background', 'comment', '')
call candle#highlight('Underlined', 'blue', '', 'underline')

if has('gui_running')
  call candle#highlight('Search', 'yellow', 'dark_yellow', 'underline')
endif


"=== vim
"==============================================================================================
call candle#highlight('vimCommand', 'red', '', 'none')


"=== c
"==============================================================================================
call candle#highlight('cStorageClass', 'purple', '', '')


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


"=== diff
"==============================================================================================
call candle#highlight('diffAdded', 'green', '', '')
call candle#highlight('diffRemoved', 'red', '', '')
" call candle#highlight('diffChange', '', '', '')
call candle#highlight('diffText', 'blue', '', '')

if has('gui_running')
  call candle#highlight('diffAdded', 'green', 'dark_green', '')
  call candle#highlight('diffRemoved', 'red', 'dark_red', '')
  call candle#highlight('diffText', 'blue', 'dark_blue', '')
endif
