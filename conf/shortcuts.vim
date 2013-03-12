"QuickFixClear
nnoremap <leader>qc :copen<CR>:QuickFixClear<CR>:q<CR>
nnoremap <leader>ql :lopen<CR>:QuickFixClear<CR>:q<CR>

" keep pasted content in buffer
xnoremap p pgvy

" if a line wraps, 'j' and 'k' move through each visual line
noremap j gj
noremap k gk

" window movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" window split change
nmap <leader>h <C-W>t <C-W>K
nmap <leader>v <C-W>t <C-W>H

" tab openning and closing
map <leader>tc :tabclose<CR>
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>

" tab navigation
if has("gui_running")
    nmap <C-Tab> gt
    nmap <C-S-Tab> gT
else
    nmap <Tab> gt
    nmap <S-Tab> gT
endif

" W also saves
command! W w

" Q also quits
command! Q q

" Move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Disable home and end keys
map <home> <nop>
map <end> <nop>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Automatic folding
set foldmethod=syntax
set nofoldenable
nmap <SPACE> za

" clean last search results
nnoremap <leader>lr <esc>:let @/ = ""<cr>:<esc>

" source current file
nnoremap <leader>so :source %<CR>

" open vim-files
fun! OpenVIMFiles()
  exe "tabnew"
  exe "lcd $HOME/.vim/"
  exe "CtrlP"
endf
nnoremap <leader>vi :call OpenVIMFiles()<CR>
