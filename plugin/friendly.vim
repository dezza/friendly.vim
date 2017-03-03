if &relativenumber
  let g:number = 'relativenumber'
elseif &number
  let g:number = 'number'
else
  "NOP
endif
let g:listchars = &listchars

" :help write-plugin
"if !hasmapto('<Plug>Friendly')
"  nmap <unique> <F9> <Plug>n_Friendly
"endif
"
"if !hasmapto('<Plug>Friendly')
"  vmap <unique> <F9> <Plug>v_Friendly
"endif
" newer plugins don't map by default

noremap <unique> <script> <Plug>n_Friendly <SID>FriendlyMouseCopyPaste
noremap <SID>FriendlyMouseCopyPaste :call friendly#FriendlyMouseCopyPaste()<CR>

vnoremap <unique> <script> <Plug>v_Friendly <SID>FriendlyMouseCopyPaste
vnoremap <SID>FriendlyMouseCopyPaste :call friendly#FriendlyMouseCopyPaste()<CR>
