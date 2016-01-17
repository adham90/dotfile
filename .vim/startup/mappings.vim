map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Buffer switching
map <leader>p :bp<CR> " \p previous buffer
map <leader>n :bn<CR> " \n next buffer
map <leader>d :bd<CR> " \d delete buffer

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"======== Insert mode mappings =========
imap <C-l> <space>=><space>
imap <C-s> <Esc>:w<CR>a
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

"======== Normal mode mappings ==========
nnoremap <silent><C-p> :CtrlSpace O<CR>

" search rails app
nmap <leader>fv :CtrlP app/views<cr>
nmap <leader>fc :CtrlP app/controllers<cr>
nmap <leader>fm :CtrlP app/models<cr>
nmap <Leader>ga :A<CR>
nmap <Leader>gm :Emodel<CR>
nmap <Leader>gc :Econtroller<CR>
nmap <Leader>gv :Eview<CR>
nmap <leader>gr :e config/routes.rb<CR>

nmap <C-n> :noh<CR>
nmap <C-s> :w<CR>
nmap <leader>ev :vs $MYVIMRC<CR>
nmap <leader>gs :Gstatus<CR><C-W>15+
nmap <leader>m :VimFilerExplorer<CR>
nmap <leader>k :Ack
nmap <leader>d :bd<CR>
nmap <leader>w :w<CR>
nmap <leader>ls :ls<CR>:b
nmap <leader><leader> <c-^>
nmap <leader>re :call Rename()<cr>
" rspec test
nmap <Leader>t :call RunCurrentSpecFile()<CR>
nmap <Leader>s :call RunNearestSpec()<CR>
nmap <Leader>l :call RunLastSpec()<CR>
nmap <Leader>rs :call RunAllSpecs()<CR>

"========= Visual mode mappings ==========
vmap < <gv
vmap > >gv
"Execute dot in the selection
vmap . :norm.<CR>
