filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete

set filetype=python
au BufNewFile,BufRead *py,*pyw setf python


set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number

let Tlist_Show_One_File=1 "只显示当前文件的tag
let Tlist_Exit_OnlyWindow=1 "如果taglist是最后一个窗口则退出vim
let Tlist_Use_Left_Window=1 "在左侧显示taglist窗口
"let Tlist_Auto_Open=1 "vim启动后，自动打开

"python tab自动补全
let g:pydiction_location='~/.vim/pydiction/complete-dict'
let g:pydiction_menu_height=20

"代码折叠设置
set foldmethod=indent

"主题设置
colo darkblue

"winmanger设置
let g:winManagerWindowLayout="FileExplorer|TagList"
map <c-a> :WMToggle<cr>
"nmap wm :WMToggle<cr>
