" Java specifics
" Eclim
au FileType java map <leader>mi :JavaImportOrganize<cr>
au FileType java map <leader>co :JavaCorrect<cr>
au FileType java map <leader>fo :JavaFormat<cr>
au FileType java map <leader>gs :JavaGetSet<cr>
au FileType java map <leader>se :JavaSearch<cr>
au FileType java map <leader>jd :JavaDocComment<cr>
au FileType java map <leader>ju :JUnit<cr>

" Scala indent with 2 spaces
au FileType scala set tabstop=2 shiftwidth=2 softtabstop=2
" Ruby indent with 2 spaces
au FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2
" YAML indent with 2 spaces
au FileType yaml set tabstop=2 shiftwidth=2 softtabstop=2

au BufRead,BufNewFile *.scala set filetype=scala
au BufRead,BufNewFile *.sbt set filetype=scala

au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead *.md setfiletype markdown
au BufNewFile,BufRead *.pp setfiletype puppet

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

au BufReadPost fugitive://* set bufhidden=delete

" Remove trailling white spaces on saving
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
au BufWrite * :call DeleteTrailingWS()

