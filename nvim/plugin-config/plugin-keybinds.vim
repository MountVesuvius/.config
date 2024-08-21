" Comment 
nmap <leader>cl gcc
vmap <leader>cl gc

" NvimTree 
nmap <leader>e :NvimTreeToggle<CR>

" Vim-maximizer
nnoremap <leader>sm :MaximizerToggle<CR>

" Telescope
nmap <leader>ff <cmd>Telescope find_files<CR>
nmap <leader>fs <cmd>Telescope live_grep<CR>
nmap <leader>fc <cmd>Telescope grep_string<CR>
nmap <leader>fb <cmd>Telescope buffers<CR>
nmap <leader>fh <cmd>Telescope help_tags<CR>

" True-zen
" nmap <leader>zx:TZAtaraxis<CR>
" nmap <leader>zm :TZMinimalist
vmap <leader>fn :TZNarrow<CR>
" vmap <leader>zf :TZFocus

" HighStr
vnoremap <silent> <leader>hw :<c-u>HSHighlight 0<CR>
vnoremap <silent> <leader>hy :<c-u>HSHighlight 1<CR>
vnoremap <silent> <leader>hr :<c-u>HSHighlight 4<CR>
vnoremap <silent> <leader>hx :<c-u>HSRmHighlight<CR>
