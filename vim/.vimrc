"vimrc by maojun
"site maojun.xyz
"Last Update: 2019-07-21 20:57:25

"let g:tmuxline_powerline_separators = 0
set pastetoggle=<F9> "切换paste模式,避免粘贴时排版错误
map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'java' 
        exec '!javac %&&java %:r'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif                                                                              
endfunc 


set shell=/bin/sh "设置shell为sh

"autocmd vimenter * NERDTree "随vim启动NERDTtree
" 禁止滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

autocmd BufWritePost $MYVIMRC source $MYVIMRC "让vimrc配置w保存后立即生效
let mapleader=";" "设置leader键
set expandtab "使用空格替代制表符
set cursorline  " 高亮显示当前行
"set cursorcolumn ” 高亮显示当前列
set number "显示行号
set nowrap "禁止折行
syntax enable "开启语法高亮
syntax on " 允许配色方案替换默认高亮
set background=dark "设置背景色
colorscheme solarized "设置代码主题
set nocompatible "去掉与Vi兼容模式
set incsearch "搜索时直接显示
set hlsearch "高亮搜索
set ruler "显示状态栏标尺
set relativenumber "相对行好
set noswapfile "不生成swap文件
set ignorecase "搜索时忽略大小写
set smartcase "搜索指定大小写时匹配大小写
set smartindent  "自动智能缩进
set laststatus=2 "显示状态栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %l,%c/%L%) "设置状态栏显示的信息：路径 文件名 文件格式 编码 行号,列号/总行数
set t_Co=256 "启用256色
set showmatch "匹配对应括号高亮
filetype on "开启文件类型检测
filetype plugin on "不同的文件类型加载不同的插件
filetype indent on " 自适应不同的语言缩进 比如python缩进规则在~/.vim/indent/python.vim
"set spell spelllang=en_us,cjk "英文拼写检查,cjk忽略中文
set autoread "文件监视，在编辑时被修改后提示
au CursorHold,CursorHoldI * checktime "光标停止时触发autoread,默认4s触发一次
set wildmenu  "命令模式指令自动补全
set wildmode=longest:list,full
set scrolloff=3 "光标移动到buffer的顶部和底部时保持3行距离
set report=0 "复制或删除行时底部显示行数变化
set nrformats= "把所有数字都当成十进制
set history=1024 "设置命令行历史记录上限为1024条


" 基于缩进或语法进行代码折叠
set foldmethod=indent  
set foldmethod=syntax 
set nofoldenable " 启动 vim 时关闭折叠代码

" 统一缩进
set tabstop=4 " 设置制表符占用的空格数
set softtabstop=4 " 把连续数量的空格视为一个制表符
set shiftwidth=4 " 设置格式化时制表符占用的空格数

set termencoding=utf-8 "设置为utf-8编码"
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"一些脚本，新建pyhton文件自动加头
"func SetTitle()
"call setline(1, "\#!/usr/bin/python")
"call setline(2, "\# -*- coding=utf8 -*-")
"call setline(3, "\"\"\"")
"call setline(4, "\# @Author : ")
"call setline(5, "\# @Created Time : ".strftime("%Y-%m-%d %H:%M:%S"))
"call setline(6, "\# @Description : ")
"call setline(7, "\"\"\"")
"normal G
"normal o
"normal o
"endfunc
"autocmd bufnewfile *.py call SetTitle()

""""
"新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Author: Jun Mao")
        call append(line(".")+2, "\# mail: maojunxyz@gmail.com")
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\#########################################################################")
        call append(line(".")+5, "\#!/bin/bash")
        call append(line(".")+6, "")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "    > File Name: ".expand("%"))
        call append(line(".")+1, "    > Author: Jun Mao")
        call append(line(".")+2, "    > Mail: maojunxyz@gmail.com ")
        call append(line(".")+3, "    > Created Time: ".strftime("%c"))
        call append(line(".")+4, " ************************************************************************/")
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc

