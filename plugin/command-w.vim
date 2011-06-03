" Author:   Nate Kane <nathanaelkane AT gmail DOT com>
" Homepage: http://github.com/nathanaelkane/vim-command-w

if exists('g:loaded_command_w') || &cp
  finish
endif
let g:loaded_command_w = 1

function s:BufkillError()
  if !exists('g:command_w_bufkill_error_shown')
    echoe 'Command-W requires the bufkill plugin to be installed in order to operate correctly'
    let g:command_w_bufkill_error_shown = 1
  endif
endfunction

function! s:CommandW()
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

command! -bar CommandW call s:CommandW()
