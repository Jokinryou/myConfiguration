" Configuration file for vim
"
" =====================================
" General
" =====================================

" 这个还不知道是干什么的
set modelines=0		" CVE-2007-2438

" 非兼容vi模式。去掉有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
" 这个还不知道是干什么的
set backspace=2		" more powerful backspacing

" 关闭文件类型检测，使用vundle管理插件必须设置
filetype off " required! to use vundle

" 取消备份
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" 粘贴时保持格式
set paste
" -则点击光标不会换，用于复制
set mouse-=a    " 在所有的模式下面打开鼠标
set selection=exclusive
set selectmode=mouse,key

" 关闭遇到错误时的提示音
set noerrorbells
set novisualbell


"======================================
" Show and Format
" =====================================

" 显示行号
set number
" 禁止自动换行
"set nowrap

" 显示括号配对
set showmatch
" 多少个十分之一秒内显示配对闪烁
set mat=2

" 设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
" 高亮search命中的文本
set hlsearch
" 搜索是忽略大小写
set ignorecase
" 有一个或以上大写字母时扔大小写敏感
set smartcase
" 随着键入即时搜索
set incsearch

" 代码折叠
" manual 手工折叠
" indext 使用缩进表示折叠
" expr 使用表达式定义折叠
" syntax 使用语法定义折叠
" diff 对没有更改的文本进行折叠
" marker 使用标记进行折叠，默认标记是{{{ 和 }}}
set foldmethod=indent

" 缩进
" 为特定文件载入相关缩进文件
filetype indent on
set autoindent " Auto Indent
"set si " Smart Indent
" 将Tab自动转化为空格[需要输入真正Tab键时，使用Ctrl+v+Tab]
set expandtab
" 设置Tab键的宽度[等同的空格数]
set shiftwidth=4
" 按退格键时可以一次删除掉4个空格
set softtabstop=4

"======================================
" Status
"======================================
" 显示当前行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd

"======================================
" Colors and Fonts
"======================================

" 语法高亮
"syntax enable
syntax on

" 配色方案
colorscheme desert
set t_Co=256

if has("gui_running")
    set go=aAce             " 去掉工具栏和滑动条
    set guifont=Monaco:h12  " 设置字体
    set columns=130         " 设置宽
    set lines=40            " 设置宽
endif

"======================================
" File encode
"======================================

" 设置vim以utf-8编码显示文件[缩写enc]
set encoding=utf-8
" 自动判断编码，一次尝试以下编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,default

" 这个不知道是干什么的
set ambiwidth=double

" 合并两行中文时，不在中间加空格
set formatoptions+=B

"======================================
" Others
"======================================

" .vimrc每次编辑保存后自动生效
"autocmd! bufwritepost .vimrc source ~/.vimrc

" 让退格、空格，上下箭头遇到行首行尾时自动移动下一行(包括insert模式)
set whichwrap=b,s,<,>,[,]

" 插入模式下移动
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
" 不知道为什么，Ctrl+h 无法移动，为删除光标前一个字符
"inoremap <c-h> <left>

" 修改leader键为逗号
let mapleader=","

"======================================
" Vundle 插件管理
"======================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 使用Vundle来管理Vundle，这个必须有。
Bundle 'gmarik/vundle'

" 下边是插件
"
" 在输入()，""等需要配对的符号时，自动补全剩余的半个
Bundle 'AutoClose'

" ZenCoding 编写HTML的神器
Bundle 'ZenCoding.vim'
" 映射为 Ctrl+e 展开
let g:user_zen_expandabbr_key = '<c-e>'
" 这个还不知道是干什么的
let g:use_zen_complete_tag = 1

" 显示行末的空格
Bundle 'ShowTrailingWhitespace'

" JS代码格式化插件
Bundle '_jsbeautify'
nnoremap <leader>_ff :call g:Jsbeautify()<CR>

" 用全新的方式在文档中高效的移动光标，革命性的突破
Bundle 'EasyMotion'
" 映射快捷键为[,,w] 之前以将leader键映射为[,]
let g:EasyMotion_leader_key = '<leader><Leader>'

" 自动识别文件编码
" Bundle 'FencView.vim'

" NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码
Bundle 'The-NERD-Commenter'
let NERDShutUp=1
" 支持单行和多行的选择
map <c-h> ,c<space>

" 解放生产力的神器，简单配置，就可以按照自己的风格快速输入大段代码
" Bundle 'UltiSnips'
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" 让代码更加易于纵向排版，以=或，符号对齐
Bundle 'Tabular'

" Python代码自动补全
Bundle 'Pydiction'
" Pydiction设置
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height=20

" 代码补全
" Bundle 'Valloric/YouCompleteMe'

" 放置在Bundle的设置后，防止意外BUG
filetype plugin indent on
