filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
" tagbar标签导航 
nmap <Leader>tb :TagbarToggle<CR> 
let g:tagbar_ctags_bin='/usr/bin/ctags' 
let g:tagbar_width=30 
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen() 
let g:jedi#auto_initialization = 1
set tabstop=4
set hlsearch
"set list 
"set listchars=tab:>-,trail:-,extends:>,precedes:<
" 主题 solarized 
let g:solarized_termtrans=1 
let g:solarized_contrast="normal"
let g:solarized_visibility="normal" 
" 配色方案
set number 
set background=dark 
set t_Co=256 
colorscheme molokai
" 方向键切换窗口
"nnoremap <C-J> <C-W><C-J> 
"nnoremap <C-K> <C-W><C-K> 
"nnoremap <C-L> <C-W><C-L> 
"nnoremap <C-H> <C-W><C-H>
map <F3> :NERDTreeMirror<CR> 
map <F3> :NERDTreeToggle<CR>
let g:TreeDirArrowExpandable = '+' 
let g:NERDTreeDirArrowCollapsible = '-' 
"窗口位置 
let g:NERDTreeWinPos='right' 
"窗口尺寸 
let g:NERDTreeSize=25
let g:NERDTreeWinSize=26 
"窗口是否显示行号 
let g:NERDTreeShowLineNumbers=0 
"不显示隐藏文件 
let g:NERDTreeHidden=0 
"打开vim时如果没有文件自动打开NERDTree 
autocmd vimenter * if !argc()|NERDTree|endif 
"当NERDTree为剩下的唯一窗口时自动关闭 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
"打开vim时自动打开NERDTree 
autocmd vimenter * NERDTree


"close vim if the only window left open is a NERDTree 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end  "
"ctrlp文件搜索 
" 打开ctrlp搜索 
let g:ctrlp_map = '<leader>f' 
let g:ctrlp_cmd = 'CtrlP' 
" 相当于mru功能，show recently opened files 
map <leader>fp :CtrlPMRU<CR> 
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = {    
       \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
       \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',     
       \ } 
"\ 'link': 'SOME_BAD_SYMBOLIC_LINKS', 
let g:ctrlp_working_path_mode=0 
let g:ctrlp_match_window_bottom=1 
let g:ctrlp_max_height=15 
let g:ctrlp_match_window_reversed=0 
let g:ctrlp_mruf_max=500 
let g:ctrlp_follow_symlinks=1  
" vim-powerline美化状态 
" let g:Powerline_symbols = 'fancy' 
let g:Powerline_symbols = 'unicode'

" 括号匹配高亮 
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],     
    \ ['Darkblue',    'SeaGreen3'],     
    \ ['darkgray',    'DarkOrchid3'],     
    \ ['darkgreen',   'firebrick3'],     
    \ ['darkcyan',    'RoyalBlue3'],     
    \ ['darkred',     'SeaGreen3'],     
    \ ['darkmagenta', 'DarkOrchid3'],    
    \ ['brown',       'firebrick3'],     
    \ ['gray',        'RoyalBlue3'],     
    \ ['black',       'SeaGreen3'],     
    \ ['darkmagenta', 'DarkOrchid3'],     
    \ ['Darkblue',    'firebrick3'],     
    \ ['darkgreen',   'RoyalBlue3'],     
    \ ['darkcyan',    'SeaGreen3'],     
    \ ['darkred',     'DarkOrchid3'],     
    \ ['red',         'firebrick3'],     
    \ ] 
let g:rbpt_max = 40 
let g:rbpt_loadcmd_toggle = 0
" 可视化缩进
let g:indent_guides_enable_on_vim_startup = 1  " 默认关闭 
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸 
let g:indent_guides_start_level           = 1  " 从第二层开始可视化显示缩进
map <F5> :call CompileRunGcc()<CR> 	
	func! CompileRunGcc() 
		exec "w" 		
		if &filetype == 'python' 			
			exec "!python3 %" 		
	endif 
endfunc

