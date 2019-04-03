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
  \ 'dark_orange':   ['573f2e', -1],
  \
  \ 'dark_red':      ['503131', -1],
  \ 'dark_green':    ['4c4b30', -1],
  \ 'dark_yellow':   ['5f5138', -1],
  \ 'dark_blue':     ['39444d', -1],
  \ 'dark_purple':   ['47404d', -1],
  \ 'dark_aqua':     ['3c4e4b', -1],
\ }

let candle#palette = s:palette

" sets the highlighting for the given group
function! candle#highlight(group, fg, bg, attr) abort
  let l:options = ''

  if a:attr ==# 'undercurl' && a:fg !=# ''
    let l:fg = s:palette[a:fg]
    let l:options .= ' guisp=#' . l:fg[0]
    let l:options .= ' gui=undercurl'
    let l:options .= ' term=underline'
    let l:options .= ' cterm=underline'
  else
    if a:fg !=# ''
      let l:fg = s:palette[a:fg]
      let l:options .= ' guifg=#' . l:fg[0]
      if l:fg[1] > 0
        let l:options .= ' ctermfg=' . l:fg[1]
      endif
    endif

    if a:bg !=# ''
      let l:bg = s:palette[a:bg]
      let l:options .= ' guibg=#' . l:bg[0]
      if l:bg[1] > 0
        let l:options .= ' ctermbg=' . l:bg[1]
      endif
    endif

    if a:attr !=# ''
      let l:options .= ' gui=' . a:attr
      let l:options .= ' term=' . a:attr
      let l:options .= ' cterm=' . a:attr
    endif
  endif

  if l:options ==# ''
    return
  endif

  exec 'hi' a:group l:options
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
