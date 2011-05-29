" Author:   Nate Kane <nathanaelkane AT gmail DOT com>
" Homepage: http://github.com/nathanaelkane/vim-closer

if exists('g:loaded_closer') || &cp
  finish
endif
let g:loaded_closer = 1

function s:BufkillError()
  if !exists('g:closer_bufkill_error_shown')
    echoe 'Closer requires the bufkill plugin to be installed in order to operate correctly'
    let g:closer_bufkill_error_shown = 1
  endif
endfunction

function! s:Closer()
  let l:bufcount = len(filter(range(1, bufnr('$')), 'buflisted(v:val) == 1'))

  if l:bufcount == 1
    qall
  else
    if exists('g:loaded_bufkill')
      BD
    else
      call s:BufkillError()
      q
    endif
  endif
endfunction

command! -bar Closer call s:Closer()
