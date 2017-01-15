if &relativenumber && !&number
  let g:number = 'relativenumber'
elseif &number && !&relativenumber
  let g:number = 'number'
else
  "NOP
endif
let g:listchars = &listchars

function! s:FriendlyMouseCopyPaste()
    if !&wrap
      if g:number ==# 'relativenumber'
        set norelativenumber
      elseif g:number ==# 'number'
        set nonumber
      else
        "NOP
      endif

      setlocal wrap
      set nolist
      setlocal paste
      setlocal nolist

      echo 'Friendly mouse copy activated !'
    else
      if g:number ==# 'relativenumber'
        set relativenumber
      elseif g:number ==# 'number'
        set number
      else
        "NOP
      endif

      set list
      let &listchars=g:listchars
      setlocal nowrap
      setlocal nopaste
      echo ''
    endif

endfunction

" :help write-plugin
if !hasmapto('<Plug>Friendly')
  nmap <unique> <F9> <Plug>n_Friendly
endif

if !hasmapto('<Plug>Friendly')
  vmap <unique> <F9> <Plug>v_Friendly
endif

noremap <unique> <script> <Plug>n_Friendly <SID>FriendlyMouseCopyPaste
noremap <SID>FriendlyMouseCopyPaste :call <SID>FriendlyMouseCopyPaste()<CR>

vnoremap <unique> <script> <Plug>v_Friendly <SID>FriendlyMouseCopyPaste
vnoremap <SID>FriendlyMouseCopyPaste :call <SID>FriendlyMouseCopyPaste()<CR>
