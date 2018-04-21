"this is fang.hao' vim config.

"显示行号
set nu

"自动语法高亮
syntax on

"自动缩进
set autoindent
set cindent

"Tab键的宽度
set tabstop=4

"统一缩进为4
set softtabstop=4
set shiftwidth=4

"新建.sh文件时，自动在文件头插入相关信息
autocmd BufNewFile *.sh exec ": call SetTitle()"
func SetTitle()
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash") 
       	call setline(2,"\#########################################################################") 
        call setline(3, "\# File Name: ".expand("%")) 
        call setline(4, "\# Author: fang.hao") 
        call setline(5, "\# Mail: fang.hao@sfit.shfe.com.cn") 
        call setline(6, "\# Created Time: ".strftime("%c")) 
        call setline(7, "\# Function: ") 
        call setline(8, "\#########################################################################") 
        call setline(9, "")
    endif
endfunc 
autocmd BufNewFile * normal G
