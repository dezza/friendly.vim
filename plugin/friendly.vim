if &relativenumber
  let g:number = 'relativenumber'
elseif &number
  let g:number = 'number'
else
  "NOP
endif
let g:listchars = &listchars
let g:list = &list

noremap <unique> <script> <Plug>n_Friendly <SID>FriendlyMouseCopyPaste
noremap <SID>FriendlyMouseCopyPaste :call friendly#FriendlyMouseCopyPaste()<CR>

vnoremap <unique> <script> <Plug>v_Friendly <SID>FriendlyMouseCopyPaste
vnoremap <SID>FriendlyMouseCopyPaste :call friendly#FriendlyMouseCopyPaste()<CR>
