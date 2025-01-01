set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}



" Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'
" Plugin 'zxqfl/tabnine-vim'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'corntrace/bufexplorer'
" Plugin 'tpope/vim-dispatch'
" Plugin 'tpope/vim-projectionist'
" Plugin 'noahfrederick/vim-composer'
" Plugin 'noahfrederick/vim-laravel'
" Plugin 'jwalton512/vim-blade'
Plugin 'scrooloose/nerdtree'
" Plugin 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
" Plugin 'vim-scripts/OmniCppComplete'
Plugin 'ycm-core/YouCompleteMe'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
" Plugin 'shawncplus/phpcomplete.vim'
" Plugin 'craigemery/vim-autotag'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'fatih/vim-go'
" Plugin 'nsf/gocode'
" , {'rtp': 'vim/'}
Plugin 'vim-syntastic/syntastic'
" Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'bling/vim-bufferline'
" Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
 " Plugin 'chemzqm/wxapp.vim'
Plugin 'chrisbra/Colorizer'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1
set termencoding=utf-8
set encoding=utf-8
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
filetype indent on
set wrap
set linebreak
set showmatch
set ruler
set hlsearch
set incsearch
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full
set number
set history=10000
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set smartindent
set expandtab
set shiftwidth=4
set matchtime=30
set clipboard+=unnamed
set mouse-=a
syntax on
colorscheme default
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
" inoremap { {}<LEFT>
" inoremap ' ''<LEFT>
" inoremap " ""<LEFT>
set scrolloff=7 "在上下移动光标时，光标的上方或下方至少会保留显示的行数
hi Pmenu ctermfg=white ctermbg=Lightgrey
"guibg=grey
hi PmenuSel ctermfg=Magenta ctermbg=white
"guibg=#00ff00 guifg=red
"cyan
" set cursorline
" cterm=NONE
" hi CursorLine ctermbg=Lightblue ctermfg=black
" hi Cursor ctermfg=black ctermbg=Magenta
hi Pmenu ctermfg=white ctermbg=55
"guibg=grey
hi PmenuSel ctermfg=black ctermbg=2
hi Search ctermfg=white ctermbg=55
hi DiffChange ctermfg=black ctermbg=2
" hi SpellBad term=standout ctermfg=1 ctermbg=black ctermfg=darkred guibg=Red guifg=black
hi SpellBad term=standout ctermfg=1 ctermbg=darkred ctermfg=white guibg=Red guifg=black

hi SpellCap ctermfg=darkyellow ctermbg=black

hi airline_error_inactive_red term=bold cterm=bold ctermfg=232 ctermbg=160 gui=bold guifg=#000000 guibg=#990000
hi DiffText term=bold cterm=bold ctermfg=232 ctermbg=160 gui=bold guifg=#000000 guibg=#990000


" inoremap <C-LEFT> <LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
" inoremap <C-RIGHT> <RIGHT><RIGHT><RIGHT><RIGHT><RIGHT><RIGHT><RIGHT><RIGHT><RIGHT><RIGHT>
map <C-UP> <UP><UP><UP><UP><UP>
map <C-DOWN> <DOWN><DOWN><DOWN><DOWN><DOWN>
inoremap <C-UP> <UP><UP><UP><UP><UP>
inoremap <C-DOWN> <DOWN><DOWN><DOWN><DOWN><DOWN>
inoremap ,, <Esc>la
inoremap <C-o> <Esc>o
" inoremap <C-O> <Esc>O
inoremap <C-a> <Home>
inoremap <C-e> <End>
" inoremap <C-l> _
vnoremap Y "+y
vnoremap <C-c> "+y


autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>



" easymotion
let g:EasyMotion_leader_key = 'f'
" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

" " s{char}{char} to move to {char}{char}
" nmap <Leader>s <Plug>(easymotion-overwin-f2)

" " Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)

" " Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)


nnoremap b :s/\n\n    //<CR>n
nnoremap m N


" cnoremap ` bp\|bd #
let mapleader = "\<Space>"
nnoremap <Leader>, :set fo-=r\|set noautoindent\|set nocindent<CR>
nnoremap <Leader>. :set fo=r\|set autoindent\|set cindent<CR>
nnoremap <Leader>j :resize +1<CR>
nnoremap <Leader>k :resize -1<CR>
nnoremap <Leader>h :vertical resize +2<CR>
nnoremap <Leader>l :vertical resize -2<CR>
nnoremap h<Leader> :vertical resize +2<CR>
nnoremap l<Leader> :vertical resize -2<CR>
inoremap <C-Z> <Esc><C-z>
set timeout
set timeoutlen=250
" set ttimeout
" set ttimeoutlen=10000

nnoremap <Leader><TAB> <C-w>w
" inoremap <C-TAB> <ESC><C-w>w
" nnoremap <Leader>w :w<CR>
"保存文件
nnoremap <Leader>w :w<CR>
inoremap <C-S> <Esc>:w<CR>a
" nnoremap <Leader>q :q<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <Leader>qq :q<CR>
" nnoremap <Leader>wq :wq<CR>
nnoremap q<Leader> :q<CR>
nnoremap <Leader>b :lclose<CR>
nnoremap <Leader>qq :q\|q<CR>
" inoremap <C-\> <C-x><C-o>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
" nmap <Leader><Leader> V
nnoremap mb G
nnoremap mt gg
nmap <C-I> gcc
nmap <C-L> gcc
" inoremap <C-L> <Esc>gcc<CR>i
inoremap <C-L> <Esc>:Commentary<CR>a
" inoremap <C-L> <Esc>gcci
" imap <C-TAB> gcc
" vmap <C-i> gc
vmap <C-L> gc
map q: :q
nnoremap ; :
" inoremap ` $
" inoremap $ `
set foldmethod=manual "set default foldmethod


" autocmd FileType java setlocal omnifunc=javacomplete#Complete
" nmap <F4> <Plug>(JavaComplete_Imports_AddSmart)
" imap <F4> <Plug>(JavaComplete_Imports_AddSmart)
" nmap <F5> <Plug>(JavaComplete-Imports-AddMissing)
" imap <F5> <Plug>(JavaComplete-Imports-AddMissing)
" To remove all missing imports with F6:
" nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
" imap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)



let g:SuperTabDefaultCompletionType = '<C-l>'
" let g:SuperTabDefaultCompletionType = '<C-x><C-o>'



"Sublime Text 支持多个光标选择功能，在重构时非常有用。这个插件将 Sublime Text中的这个邪恶功能引入了Vim。想要修改变量名时，只需要将光标放在变量名内，然后多次敲击 Ctrl +n，即可将多个同名变量选中，此时再按 s 就能同时将这些变量重命名了
"
"inoremap <Leader><TAB> <C-x><C-o>
map <C-f> :Ack<space>
"autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
"开启/关闭nerdtree快捷键
nmap <enter> :NERDTreeToggle<CR>
" map <F10> :NERDTreeToggle<CR>
" map <C-m> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowLineNumbers=1  " 是否显示行号
"let g:NERDTreeHidden=0     "不显示隐藏文件
"Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" 不显示隐藏文件
" let g:NERDTreeHidden=0
" 过滤: 所有指定文件和文件夹不显示
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']
let NERDTreeQuitOnOpen = 1


"启用后; 预览窗口的内容将包含从完成的docblock注释中提取的信息; 启用此选项也会将返回类型添加到功能的完成菜单中
" let g:phpcomplete_parse_docblock_comments = 1



"告诉vim在当前目录找不到tags文件时请到上层目录查找
"set tags=tags;/



set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 1
" highlight link SyntasticWarningSign ErrorMsg
" highlight link YcmWarningSign ErrorMsg
" highlight link SyntasticErrorSign WarningMsg

" highlight link SyntasticErrorSign ErrorMsg
" highlight link YcmErrorSign ErrorMsg

" :SyntasticCheck phpcs
let g:syntastic_aggregate_errors = 1
let g:syntastic_php_checkers = ['php', 'phpcs']

" python pylint
let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_exec = 'python'
"let g:syntastic_python_args = ['-m', 'py_compile']
if has('python3')
  silent! python3 1
endif

" let g:airline_theme='seagull'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#enabled = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>, <Plug>AirlineSelectPrevTab
nmap <leader>. <Plug>AirlineSelectNextTab
let g:airline_inactive_collapse=1



let g:ackprg = 'ag --nogroup --nocolor --column'



" Success
" let g:UltiSnipsExpandTrigger="<C-L>"
let g:UltiSnipsExpandTrigger="<TAB>"

let g:UltiSnipsListSnippets="<C-M>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-n>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




" nnoremap s i
nnoremap e i
nnoremap <C-y> Vy
imap <C-y> <ESC>Vy
" inoremap <C-y> <ESC>Vy
inoremap <C-d> <ESC>4dh<DEL>a


nnoremap Y Vy
nnoremap <Leader>f :resize +20<CR>





" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', 'enter']

" 不显示开启vim时检查ycm_extra_conf文件的信息  
let g:ycm_confirm_extra_conf=0
" 开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files=1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 输入第1个字符开始补全
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项
" let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
            \ 'tagbar' : 1,
            \ 'nerdtree' : 1,
            \}

let g:ycm_enable_diagnostic = 1
let g:ycm_syntastic_enable = 1
" let g:ycm_use_ultisnips_completer = 1
let g:ycm_key_list_stop_completion = ['<CR>']

"let g:ycm_semantic_triggers =  {
"           \   'c' : ['->', '.', 're!\w{1}'],
"           \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
"           \             're!\[.*\]\s', 're!\w{1}'],
"           \   'ocaml' : ['.', '#', 're!\w{1}'],
"           \   'cpp,objcpp' : ['->', '.', '::', 're!\w{1}'],
"           \   'perl' : ['->', 're!\w{1}'],
"           \   'php' : ['->', '::', 're!\w{1}'],
"           \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.', 're!\w{1}'],
"           \   'ruby' : ['.', '::', 're!\w{1}'],
"           \   'lua' : ['.', ':', 're!\w{1}'],
"           \   'erlang' : [':', 're!\w{1}'],
"           \   'golang' : [':', 're!\w{1}'],
"           \ }
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
" let g:ycm_enable_diagnostic_highlighting = 0
" set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_select_completion = ['<Down>']
"nnoremap <C-g> :YcmForceCompileAndDiagnostics<CR>
"let g:ycm_key_list_invoke_completion = ['<TAB>']
" YCM settings
" let g:ycm_key_list_select_completion = ['', '']
" let g:ycm_key_list_previous_completion = ['']
" let g:ycm_key_invoke_completion = 
"<Down>"
" UltiSnips setting
nnoremap <leader>gr :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gg :w<CR>:YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gc :YcmCompleter GoToCallers<CR>
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 跳转到定义
" let g:ycm_max_diagnostics_to_display = 5



" let g:LanguageClient_loadSettings = 1
" let g:LanguageClient_diagnosticsEnable = 0
" let g:LanguageClient_settingsPath = expand('~/.vim/languageclient.json')
" let g:LanguageClient_selectionUI = 'quickfix'
" let g:LanguageClient_diagnosticsList = v:null
" let g:LanguageClient_hoverPreview = 'Never'
" let g:LanguageClient_serverCommands = {}
" let g:LanguageClient_serverCommands.c = ['~/.config/TabNine/build/cquery/build/cquery']
" let g:LanguageClient_serverCommands.cpp = ['~/.config/TabNine/build/cquery/build/cquery']
" noremap <leader>rd :call LanguageClient#textDocument_definition()<cr>
" noremap <leader>rr :call LanguageClient#textDocument_references()<cr>
" noremap <leader>rv :call LanguageClient#textDocument_hover()<cr>


" " let g:ycm_filetype_whitelist = {
"       " \ 'cpp' : 1,
"       " \ 'c' : 1,
"       " \ 'python3' : 1,
"       " \ 'go' : 1,
"       " \ 'php' : 1,
"       " \ 'python' : 1,
"       " \ 'html' : 1,
"       " \ 'js' : 1,
"       " \ 'css' : 1,
"       " \ 'wxss' : 1,
"       " \ 'wxml' : 1,
"       " \ 'json' : 1,
"       " \ 'sh' : 1,
"       " \ 'java' : 1
"       " \}

" let g:ycm_min_num_identifier_candidate_chars = 1
" let g:ycm_show_diagnostics_ui = 1
" let g:ycm_error_symbol = '!'
" let g:ycm_warning_symbol = '?'
" let g:ycm_enable_diagnostic_signs = 1
" let g:ycm_enable_diagnostic_highlighting = 1

" let g:ycm_echo_current_diagnostic = 1
" let g:ycm_always_populate_location_list = 1
" let g:ycm_open_loclist_on_ycm_diags = 1


" let g:ycm_server_keep_logfiles = 1
" let g:ycm_add_preview_to_completeopt = 1


let g:ycm_disable_for_files_larger_than_kb = 10000

let g:colorizer_auto_filetype='css, html, log'
nmap <leader>c :ColorHighlight<CR>
