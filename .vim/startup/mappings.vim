map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

"======== Insert mode mappings =========
imap <C-l> <space>=><space>
imap <C-s> <Esc>:w<CR>a
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

"======== Normal mode mappings ==========
nmap <C-n> :noh<CR> "turn off search highlighting
nmap <C-s> :w<CR>
nmap <leader>ev :vs $MYVIMRC<CR>
nmap <leader>gs :Gstatus<CR><C-W>15+
nmap <leader>m :NERDTreeToggle<CR>
nmap <leader>a :Ack
nmap <leader>d :bd<CR>
nmap <leader>w :w<CR>
nmap <leader><cr> :noh<CR>
nmap <leader>ls :ls<CR>:b
nmap n nzz
nmap N Nzz
nmap <Leader>t :call RunCurrentSpecFile()<CR>
nmap <Leader>s :call RunNearestSpec()<CR>
nmap <Leader>l :call RunLastSpec()<CR>
nmap <Leader>rs :call RunAllSpecs()<CR>
nmap <Leader>a :A<CR>

"========= Visual mode mappings ==========
vmap < <gv
vmap > >gv
vmap . :norm.<CR> "Execute dot in the selection
