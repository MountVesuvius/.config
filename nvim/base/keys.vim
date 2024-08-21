" Navigation 
" --------------- 
" Maps ijkl for movement
map i <Up>
map j <Left>
map k <Down>
" Swaps i & h
nnoremap h i
nnoremap H I

" wsl2 binding fix for visual block mode
" it has been bound to C-q but Leader-v mentally makes a little more sense
" also im used to C-v
nnoremap <Leader>v <C-q>

" Split movement
nmap <C-i> <C-w><Up>
nmap <C-k> <C-w><Down>
nmap <C-j> <C-w><Left>
nmap <C-l> <C-w><Right>

" General Keybinds
" ------------------
let mapleader = " "

" Double <Esc> removes highlight
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" Increment and Decrement
nnoremap <leader>= <C-a>
nnoremap <leader>- <C-x>

" Split control
nnoremap <leader>sv <C-w>v
nnoremap <leader>sh <C-w>s
nnoremap <leader>se <C-w>=
nnoremap <leader>sx :close<CR>

" Tab control
nnoremap <leader>to :tabnew<CR>
nnoremap <leader>tx :tabclose<CR>
" Tab movement
nnoremap <leader>tj :tabp<CR>
nnoremap <leader>tl :tabn<CR>

" Terminal Mode -> Normal Mode
tmap <Esc> <c-\><c-N>

" save on exit insert mode
inoremap <Esc> <Esc>:w<CR>
