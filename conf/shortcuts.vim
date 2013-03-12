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
