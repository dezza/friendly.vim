function! friendly#FriendlyMouseCopyPaste()
    if !&wrap
      if g:number ==# 'relativenumber'
        set norelativenumber
        set nonumber
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
        set number
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
