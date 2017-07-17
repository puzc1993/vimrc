"my nvim config file
call plug#begin('~/.vim/plugeed')
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Yggdroot/indentLine'
Plug 'myusuf3/numbers.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-smooth-scroll'
call plug#end()

	" Some useful settings
	set showcmd
	set smartindent
	set expandtab         "tab to spaces
	set tabstop=4         "the width of a tab
	set shiftwidth=4      "the width for indent
	set foldenable
	set foldmethod=indent "folding by indent
	set ignorecase        "ignore the case when search texts
	set smartcase         "if searching text contains uppercase case will not be ignored

	" Lookings
	set number           "line number
	set cursorline       "hilight the line that the cursor exists in
	set cursorcolumn     "hilight the column that the cursor exists in
	set nowrap           "no line wrapping
	colorscheme gruvbox  "use the theme gruvbox
	set background=dark "use the light version of gruvbox
	" change the color of chars over the width of 80 into blue (uncomment to enable this)
	"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1

	" Fundamental settings
	set fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
	set fileformat=unix
	set fileformats=unix,dos,mac
	filetype on
	filetype plugin on
	filetype plugin indent on
	syntax on

	" <F4> => popup the file tree navigation)
	nmap <F4> :NERDTreeToggle<CR>
	" <F3> => toggle the Numbers
	nmap <F3> :NumbersToggle<CR>
	nmap <F2> :NumbersOnOff<CR>

	nmap t<Enter> :rightbelow sp term://zsh\|resize 15<CR>i

	" NERDTress File highlighting
	function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
	endfunction

	call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
	call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
	call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
	call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
	call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
	call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
	call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
	call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
	call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
	call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
	call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
	call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
	call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

	" Plugin settings
        " EasyAlign
            xmap ga <Plug>(EasyAlign)
            nmap ga <Plug>(EasyAlign)
        " IdentLine
            "let g:indentLine_color_term = 239
        "YouCompleteMe"
            let g:ycm_python_binary_path = '/usr/bin/python'
            let g:ycm_server_python_interpreter = '/usr/bin/python'
            let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
        "NerdTree hide press ? for help
  	        let NERDTreeMinimalUI = 1
        "vim-smooth-scroll
  	        noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
  	        noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
  	        noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
  	        noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
