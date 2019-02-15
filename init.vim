"my nvim config file
call plug#begin('~/.vim_back/plugeed')
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
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'bronson/vim-trailing-whitespace'
"Plug 'w0rp/ale'
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" Some useful settings
set showcmd
set smartindent
set expandtab         "tab to spaces
set tabstop=4         "the width of a tab
set shiftwidth=4      "the width for indent
set foldenable
"set foldmethod=indent "folding by indent
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
"noremap tk <c-w>k
"noremap tj <c-w>j
"noremap th <c-w>h
"noremap tl <c-w>l
" ctrl+w[number] => switch to the file showed in the top tabs
nmap <C-W>1 <Plug>AirlineSelectTab1
nmap <C-W>2 <Plug>AirlineSelectTab2
nmap <C-W>3 <Plug>AirlineSelectTab3
nmap <C-W>4 <Plug>AirlineSelectTab4
nmap <C-W>5 <Plug>AirlineSelectTab5
nmap <C-W>6 <Plug>AirlineSelectTab6
nmap <C-W>7 <Plug>AirlineSelectTab7
nmap <C-W>8 <Plug>AirlineSelectTab8
nmap <C-W>9 <Plug>AirlineSelectTab9

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
let g:ycm_global_ycm_extra_conf='/home/puzc/.vim_back/plugeed/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
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
"tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 30
"ctrlP
let g:ctrlp_show_hidden = 1
""ale
""始终开启标志列
"let g:ale_sign_column_always = 1
"let g:ale_set_highlights = 0
""自定义error和warning图标
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '⚡'
""在vim自带的状态栏中整合ale
"let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
""显示Linter名称,出错或警告等相关信息
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
""普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
"nmap sp <Plug>(ale_previous_wrap)
"nmap sn <Plug>(ale_next_wrap)
""<Leader>s触发/关闭语法检查
"nmap <Leader>s :ALEToggle<CR>
""<Leader>d查看错误或警告的详细信息
"nmap <Leader>d :ALEDetail<CR>
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ %{ALEGetStatusLine()}
""文件内容发生变化时不进行检查
"let g:ale_lint_on_text_changed = 'never'
""打开文件时不进行检查
"let g:ale_lint_on_enter = 0
""对C/C++使用Clang进行语法检查
"let g:ale_linters = {'c': 'clang'}
"let g:ale_linters = {'c++': 'clang++'}
"ultisnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<A-f>"
"let g:UltiSnipsJumpBackwardTrigger="<A-b>"
""python-mode
""开启警告
"let g:pymode_warnings = 0
""保存文件时自动删除无用空格
"let g:pymode_trim_whitespaces = 1
"let g:pymode_options = 1
""显示允许的最大长度的列
"let g:pymode_options_colorcolumn = 1
""设置QuickFix窗口的最大，最小高度
"let g:pymode_quickfix_minheight = 3
"let g:pymode_quickfix_maxheight = 10
""使用python3
"let g:pymode_python = 'python3'
""使用PEP8风格的缩进
"let g:pymode_indent = 1
""取消代码折叠
"let g:pymode_folding = 0
""开启python-mode定义的移动方式
"let g:pymode_motion = 1
""启用python-mode内置的python文档，使用K进行查找
"let g:pymode_doc = 1
"let g:pymode_doc_bind = 'K'
""自动检测并启用virtualenv
"let g:pymode_virtualenv = 1
""不使用python-mode运行python代码
"let g:pymode_run = 0
""let g:pymode_run_bind = '<Leader>r'
""不使用python-mode设置断点
"let g:pymode_breakpoint = 0
""let g:pymode_breakpoint_bind = '<leader>b'
""启用python语法检查
"let g:pymode_lint = 1
""修改后保存时进行检查
"let g:pymode_lint_on_write = 0
""编辑时进行检查
"let g:pymode_lint_on_fly = 0
"let g:pymode_lint_checkers = ['pyflakes', 'pep8']
""发现错误时不自动打开QuickFix窗口
"let g:pymode_lint_cwindow = 0
""侧边栏不显示python-mode相关的标志
"let g:pymode_lint_signs = 0
""let g:pymode_lint_todo_symbol = 'WW'
""let g:pymode_lint_comment_symbol = 'CC'
""let g:pymode_lint_visual_symbol = 'RR'
""let g:pymode_lint_error_symbol = 'EE'
""let g:pymode_lint_info_symbol = 'II'
""let g:pymode_lint_pyflakes_symbol = 'FF'
""启用重构
"let g:pymode_rope = 1
""不在父目录下查找.ropeproject，能提升响应速度
"let g:pymode_rope_lookup_project = 0
""光标下单词查阅文档
"let g:pymode_rope_show_doc_bind = '<C-c>d'
""项目修改后重新生成缓存
""let g:pymode_rope_regenerate_on_write = 1
""开启补全，并设置<C-Tab>为默认快捷键
"let g:pymode_rope_completion = 1
"let g:pymode_rope_complete_on_dot = 1
"let g:pymode_rope_completion_bind = '<C-Tab>'
""<C-c>g跳转到定义处，同时新建竖直窗口打开
"let g:pymode_rope_goto_definition_bind = '<C-c>g'
"let g:pymode_rope_goto_definition_cmd = 'vnew'
""重命名光标下的函数，方法，变量及类名
"let g:pymode_rope_rename_bind = '<C-c>rr'
""重命名光标下的模块或包
"let g:pymode_rope_rename_module_bind = '<C-c>r1r'
""开启python所有的语法高亮
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
""高亮缩进错误
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
""高亮空格错误
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
