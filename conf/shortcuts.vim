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

" tab openning and closing
map <leader>tc :tabclose<CR>
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>

" tab navigation
nnoremap <TAB> gt
nnoremap <S-TAB> gT

" Disable Q, K, backspace, arrow keys, home and end keys
nnoremap Q <nop>
vnoremap Q <nop>
nnoremap K <nop>
vnoremap K <nop>

nnoremap <S-backspace> <nop>
nnoremap <backspace>   <nop>
vnoremap <S-backspace> <nop>
vnoremap <backspace>   <nop>

map <up>     <nop>
map <down>   <nop>
map <left>   <nop>
map <right>  <nop>

map <home>   <nop>
map <end>    <nop>

" Enter toggles a line comment
nnoremap <CR> :call NERDComment('n', 'Toggle')<CR>
vnoremap <CR> :call NERDComment('v', 'Toggle')<CR>

" Fold by pressing space
nnoremap <SPACE> za
nnoremap <leader><SPACE> zA

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

fun! InitFont()
  exe "set guifont=" . g:default_font . g:font_separator . g:default_font_size
endfun

if has("gui_running")
  nnoremap + :silent! let &guifont = substitute(
        \ &guifont,
        \ '\d\+',
        \ '\=eval(submatch(0)+1)',
        \ '')<CR>
  nnoremap _ :silent! let &guifont = substitute(
        \ &guifont,
        \ '\d\+',
        \ '\=eval(submatch(0)-1)',
        \ '')<CR>
  nnoremap =0 :call InitFont()<CR>
endif
