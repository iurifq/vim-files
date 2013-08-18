" Java specifics
" Eclim
au FileType java map <buffer> <leader>mi :JavaImportOrganize<cr>
au FileType java map <buffer> <leader>co :JavaCorrect<cr>
au FileType java map <buffer> <leader>fo :JavaFormat<cr>
au FileType java map <buffer> <leader>gs :JavaGetSet<cr>
au FileType java map <buffer> <leader>se :JavaSearch<cr>
au FileType java map <buffer> <leader>jd :JavaDocComment<cr>
au FileType java map <buffer> <leader>ju :JUnit<cr>

" Java indent with 4 spaces
au FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4

au FileType xml setlocal noexpandtab

au BufRead,BufNewFile *.scala setf scala
au BufRead,BufNewFile *.sbt setf scala

au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead *.md setf markdown
au BufNewFile,BufRead *.pp setf puppet

au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

au BufReadPost * set bufhidden=delete

func! DeleteTrailingWSAndSave()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
  w
endfunc
