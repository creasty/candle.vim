let s:save_cpo = &cpo
set cpo&vim

let s:palette = {
  \ 'foreground':    ['a8a8a8', 248],
  \ 'comment':       ['626262', 241],
  \ 'selection':     ['444444', 238],
  \ 'line':          ['303030', 236],
  \ 'window':        ['262626', 235],
  \ 'background':    ['1a1a1a', 233],
  \
  \ 'red':           ['af7070', 1],
  \ 'green':         ['a3a46f', 2],
  \ 'yellow':        ['ceb481', 3],
  \ 'blue':          ['8397a9', 4],
  \ 'purple':        ['9d91a9', 5],
  \ 'aqua':          ['8aaaa5', 6],
  \
  \ 'bright_red':    ['af7070', 9],
  \ 'bright_green':  ['a3a46f', 10],
  \ 'bright_yellow': ['ceb481', 11],
  \ 'bright_blue':   ['8397a9', 12],
  \ 'bright_purple': ['9d91a9', 13],
  \ 'bright_aqua':   ['8aaaa5', 14],
  \
  \ 'orange':        ['bc8d6d', 137],
  \ 'dark_orange':   ['573f2e', 94],
  \
  \ 'dark_red':      ['503131', 52],
  \ 'dark_green':    ['4c4b30', 58],
  \ 'dark_yellow':   ['5f5138', 94],
  \ 'dark_blue':     ['39444d', 24],
  \ 'dark_purple':   ['47404d', 60],
  \ 'dark_aqua':     ['3c4e4b', 23],
\ }

let candle#palette = s:palette

" sets the highlighting for the given group
function! candle#highlight(group, fg, bg, attr) abort
  let options = ''

  if a:fg !=# ''
    let fg = s:palette[a:fg]
    let options .= ' guifg=#' . fg[0] . ' ctermfg=' . fg[1]
  endif
  if a:bg !=# ''
    let bg = s:palette[a:bg]
    let options .= ' guibg=#' . bg[0] . ' ctermbg=' . bg[1]
  endif
  if a:attr !=# ''
    let options .= ' gui=' . a:attr . ' cterm=' . a:attr
  endif

  exec 'hi' a:group options
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
