set nocompatible
filetype on
filetype indent on

"===== Load =====
source ~/.vim/startup/plugins.vim
source ~/.vim/startup/abbreviations.vim
source ~/.vim/startup/commands.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/settings.vim
source ~/.vim/startup/mappings.vim

"====== colorscheme ======
colorscheme Tomorrow-Night
syntax enable

"====== Statusline =======
hi User1 ctermbg=white    ctermfg=black   guibg=#89A1A1 guifg=#002B36
hi User2 ctermbg=red      ctermfg=white   guibg=#aa0000 guifg=#89a1a1
