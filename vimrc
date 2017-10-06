execute pathogen#infect()
set relativenumber
set number
set ai
set shiftwidth=2
filetype plugin indent on
set mouse=a
syntax on
set clipboard=unnamedplus
set path+=**

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

execute "set <M-j>=\ej"
map <C-I> :tabn<CR>
map <C-U> :tabp<CR>
map <C-N> :tabnew<CR>

map <C-T> :NERDTreeTabsToggle<CR>

set timeoutlen=0

"let base16colorspace=256
"set t_Co=256
"set background=light
set wildmenu
:so ~/.vim/bundle/vim-surround/plugin/surround.vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
colorscheme desert

function WriteCompileTex()
	write
	:silent !pdflatex %
	":silent !xdg-open %:r.pdf
	":silent <c-c>
	:redraw!
endfunction
command C :call WriteCompileTex()
