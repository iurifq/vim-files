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

" horizontal from/to vertical splits
map <leader>hv <C-W>t<C-W>H
map <leader>vh <C-W>t<C-W>K

" tab openning and closing
map <leader>tc :tabclose<CR>
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>o :only<CR>

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

" Shift+Enter toggles between normal, insert and visual mode
nnoremap <S-CR> i
vnoremap <S-CR> <Esc>
inoremap <S-CR> <Esc>

" Fold by pressing space
nnoremap <SPACE> za
nnoremap <leader><SPACE> zA

" clean last search results
nnoremap <leader>nh :noh<CR>

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

fun! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfun
nmap <leader>sy :call <SID>SynStack()<CR>

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

command! W :call DeleteTrailingWSAndSave()
