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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
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
	let g:gruvbox_italic=1
	colorscheme gruvbox  "use the theme gruvbox
	set background=dark "use the light version of gruvbox
	" change the color of chars over the width of 80 into blue (uncomment to enable this)
	"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	let g:gruvbox_contrast_dark='soft'

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

    " use t{h,j,k,l} to switch between different windows
    noremap tk <c-w>k
    noremap tj <c-w>j
    noremap th <c-w>h
    noremap tl <c-w>l
    " t[number] => switch to the file showed in the top tabs
    " t[ t] => prev tab/next tab
    nmap t1 <Plug>AirlineSelectTab1
    nmap t2 <Plug>AirlineSelectTab2
    nmap t3 <Plug>AirlineSelectTab3
    nmap t4 <Plug>AirlineSelectTab4
    nmap t5 <Plug>AirlineSelectTab5
    nmap t6 <Plug>AirlineSelectTab6
    nmap t7 <Plug>AirlineSelectTab7
    nmap t8 <Plug>AirlineSelectTab8
    nmap t9 <Plug>AirlineSelectTab9
    nmap t[ <Plug>AirlineSelectPrevTab
    nmap t] <Plug>AirlineSelectNextTab

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
            let g:ycm_python_binary_path = '/home/puzc/app/anaconda3/bin/python3'
            let g:ycm_server_python_interpreter = '/home/puzc/app/anaconda3/bin/python3'
            let g:ycm_global_ycm_extra_conf='/home/puzc/.vim/plugeed/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
        "NerdTree hide press ? for help
  	        let NERDTreeMinimalUI = 1
        "vim-smooth-scroll
  	        noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
  	        noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
  	        noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
  	        noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
        "airline
        "terminal font: Roboto Mono for Powerline Regular 11
            let g:airline#extensions#tabline#buffer_idx_mode = 1
            let g:airline#extensions#tabline#enabled = 1
            let g:airline_powerline_fonts = 1
            if !exists('g:airline_symbols')
                let g:airline_symbols = {}
            endif

	"easymotion
	map <C-L> <Plug>(easymotion-prefix)
    "tabbar
    nmap <F8> :TagbarToggle<CR>
    let g:tagbar_ctags_bin = '/usr/bin/ctags'  
    let g:tagbar_width = 30 
