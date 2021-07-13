call plug#begin('~/.vim/plugged')
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
call plug#end()

""****************************************************************************
"" Basic Setup

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nocompatible

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set fileformats=unix,dos,mac

"" *****************************************************************************
""  Visual Settings
syntax on
set number
set autoread

""****************************************************************************
"" Mappings and config
nmap <Space>b <Plug>(easymotion-b)
vmap <Space>b <Plug>(easymotion-b)

nmap <Space>w <Plug>(easymotion-w)
vmap <Space>w <Plug>(easymotion-w)

noremap nh :nohlsearch<CR>

if exists("g:vscode")
    noremap <Space>9  :call VSCodeNotify("workbench.action.files.openFile")<CR>
    noremap <Space>0 :call VSCodeNotify("workbench.action.files.openFolder")<CR>
    noremap <Space>s :call VSCodeNotify("workbench.action.files.save")<CR>
    noremap <Space>/ :call VSCodeNotify("editor.action.commentLine")<CR>

    noremap <Space><Space>cn :call VSCodeNotify("notifications.clearAll")<CR>
    noremap <Space><Space>cb :call VSCodeNotify("workbench.action.closeActiveEditor")<CR>
    noremap <Space><space>cp :call  VSCodeNotify("workbench.action.closePanel")<CR>

    noremap <Space><Space>ts :call VSCodeNotify("workbench.action.toggleSidebarVisibility")<CR>
    noremap <Space><Space>tt :call VSCodeNotify("workbench.action.terminal.toggleTerminal")<CR>
endif

"" search and replace under the cursor
noremap <Space>r :%s/\<<C-r><C-w>\>/
