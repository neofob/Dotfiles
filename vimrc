set background=dark hls nu
syntax on
filetype plugin indent on

set t_Co=256
colorscheme molokai

" if has('mouse')
"  set mouse=a
" endif

set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'
"
" " The bundles you install will be listed here
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
" Bundle 'klen/python-mode'
Bundle 'airblade/vim-gitgutter'
Bundle 'pearofducks/ansible-vim'
filetype plugin indent on

" nerdtree
map <F2> :NERDTreeToggle<CR>

set rtp+=~/src/powerline/powerline/bindings/vim
set laststatus=2
let g:Powerline_symbols="fancy"

if has("autocmd")
	augroup C
		autocmd!
		autocmd FileType c,cpp set textwidth=80
		autocmd BufRead,BufNewFile *[c|h] setlocal tabstop=4
		autocmd BufRead,BufNewFile *[c|h] setlocal shiftwidth=4
		autocmd BufRead,BufNewFile *[c|h] setlocal expandtab
		autocmd BufRead,BufNewFile *[c|h] setlocal tags+=~/src/linux/tags
		if has("syntax")
			highlight WhiteSpace ctermbg=red guibg=red
			autocmd Syntax c,cpp syn match WhiteSpace /\s\+$/
		endif
	augroup END

	augroup Python
		autocmd!
		autocmd FileType py set textwidth=120
		autocmd BufRead,BufNewFile *.py,*.ctrlapp setlocal tabstop=4
		autocmd BufRead,BufNewFile *.py,*.ctrlapp setlocal shiftwidth=4
		autocmd BufRead,BufNewFile *.py,*.ctrlapp setlocal expandtab
		autocmd FileType python set nowrap
		if has("syntax")
			highlight WhiteSpace ctermbg=red guibg=red
			autocmd Syntax python syn match WhiteSpace /\s\+$/
		endif
	augroup END

	augroup Markdown
		autocmd BufNewFile,BufRead *.md,*.markdown,*.mdown setl filetype=mkd
		autocmd BufNewFile,BufRead *.md,*.markdown,*.mdown setlocal textwidth=120 tabstop=2 shiftwidth=2 expandtab
		if has("syntax")
			highlight WhiteSpace ctermbg=red guibg=red
			autocmd Syntax markdown syn match WhiteSpace /\s\+$/
		endif
	augroup END
endif

autocmd BufNewFile,BufRead Vagrantfile setl filetype=ruby
autocmd BufNewFile,BufRead *.yaml,*.yml setl filetype=yaml tabstop=2 shiftwidth=2 expandtab
autocmd Syntax yaml syn match WhiteSpace /\s\+$/

if has("syntax")
	highlight WhiteSpace ctermbg=red guibg=red
	autocmd BufNewFile,BufRead *.sh match WhiteSpace /\s\+$/
	autocmd BufNewFile,BufRead *.sh setlocal ts=4 sw=4 noexpandtab
endif

set pastetoggle=<F10>

autocmd BufNewFile,BufRead COMMIT_EDITMSG setl tabstop=4 expandtab shiftwidth=4
" Update this to your path
au BufRead,BufNewFile */Automation/*/*.yml set filetype=yaml.ansible
