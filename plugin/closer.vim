" Author:   Nate Kane <nathanaelkane AT gmail DOT com>
" Homepage: http://github.com/nathanaelkane/vim-closer

if exists('g:loaded_closer') || &cp
  finish
endif
let g:loaded_closer = 1

function! s:close_vim_when_no_buffers_left()
  if s:number_of_buffers() == 1
    qall
  endif
endfunction

function! s:number_of_buffers()
  let l:buffer_count = 0
  let l:last_buffer = str2nr(bufnr('$'))

  for l:bufnr in range(1, l:last_buffer)
    if bufloaded(l:bufnr) && buflisted(l:bufnr)
      let l:buffer_count = l:buffer_count + 1
    end
  endfor

  return l:buffer_count
endfunction

autocmd BufUnload,BufWipeout * call s:close_vim_when_no_buffers_left()
