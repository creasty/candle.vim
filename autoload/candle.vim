" coding: utf-8
let s:save_cpo = &cpo
set cpo&vim

let candle#palette = {
  \ 'foreground':  ['a8a8a8', 248],
  \ 'comment':     ['626262', 241],
  \ 'selection':   ['444444', 238],
  \ 'line':        ['303030', 236],
  \ 'window':      ['262626', 235],
  \ 'background':  ['1a1a1a', 233],
  \
  \ 'orange':      ['bc8d6d', 137],
  \
  \ 'red':         ['af7070', 1],
  \ 'green':       ['a3a46f', 2],
  \ 'yellow':      ['ceb481', 3],
  \ 'blue':        ['8397a9', 4],
  \ 'purple':      ['9d91a9', 5],
  \ 'aqua':        ['8aaaa5', 6],
  \
  \ 'dark_red':    ['503131', 9],
  \ 'dark_green':  ['4c4b30', 10],
  \ 'dark_yellow': ['5f5138', 11],
  \ 'dark_blue':   ['39444d', 12],
  \ 'dark_purple': ['47404d', 13],
  \ 'dark_aqua':   ['3c4e4b', 14],
\ }

" use this command to show all cterm codes
" for c in {0..255}; do printf "\e[48;5;%dm %3d \e[0m" $c $c; [ $(($c % 16)) -eq 15 ] && echo; done

" sets the highlighting for the given group
function! candle#highlight(group, fg, bg, attr)
  let options = ''

  if a:fg != ''
    let fg = candle#palette[a:fg]
    let options .= ' guifg=#' . fg[0] . ' ctermfg=' . fg[1]
  endif
  if a:bg != ''
    let bg = candle#palette[a:bg]
    let options .= ' guibg=#' . bg[0] . ' ctermbg=' . bg[1]
  endif
  if a:attr != ''
    let options .= ' gui=' . a:attr . ' cterm=' . a:attr
  endif

  exec 'hi' a:group options
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
