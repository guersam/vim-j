" J
autocmd BufNewFile,BufReadPost *.ijs set filetype=j

function! s:isJ()
  let shebang = getline(1)
  if shebang =~# '^#!.*jconsole\>' | return 1 | en
  return 0
endfunction

au BufRead,BufNewFile * if !did_filetype() && s:isJ() | setf j | en
