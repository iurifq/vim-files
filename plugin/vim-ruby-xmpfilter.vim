let g:xmpfilter_cmd = "seeing_is_believing"

autocmd FileType ruby nmap <buffer> <C-m> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> <C-m> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> <C-m> <Plug>(seeing_is_believing-mark)

autocmd FileType ruby nmap <buffer> <C-c> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> <C-c> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> <C-c> <Plug>(seeing_is_believing-clean)

" xmpfilter compatible
autocmd FileType ruby nmap <buffer> <C-r> <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby xmap <buffer> <C-r> <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby imap <buffer> <C-r> <Plug>(seeing_is_believing-run_-x)

" auto insert mark at appropriate spot.
autocmd FileType ruby nmap <buffer> <F6> <Plug>(seeing_is_believing-run)
autocmd FileType ruby xmap <buffer> <F6> <Plug>(seeing_is_believing-run)
autocmd FileType ruby imap <buffer> <F6> <Plug>(seeing_is_believing-run)
