" ======================
" Plugins
" ======================
call plug#begin()
" ----------------------
" Essentials
" ----------------------
Plug 'http://github.com/tpope/vim-surround'                  " Surrounding ysw
Plug 'https://github.com/tpope/vim-commentary'               " Commenting gcc & gc
Plug 'https://github.com/preservim/nerdtree'                 " File explorer
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/preservim/tagbar', {'on': 'TagbarToggle'} " Tagbar
Plug 'https://github.com/junegunn/fzf.vim'                   " Fuzzy Finder
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/navarasu/onedark.nvim'              " Theme
Plug 'https://github.com/mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}              " LSP & IntelliSense
Plug 'https://github.com/tpope/vim-fugitive'                 " Git integration
Plug 'https://github.com/matze/vim-move'                     " Move lines/blocks
Plug 'voldikss/vim-floaterm'                                 " Terminal
Plug 'alvan/vim-closetag'                                    " Auto close HTML tags



" ----------------------
" Language Specific
" ----------------------
" JavaScript / TypeScript
Plug 'pangloss/vim-javascript'          " Improved JS syntax
Plug 'maxmellon/vim-jsx-pretty'         " JSX syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'     " Yet Another TypeScript Syntax
Plug 'leafgarland/typescript-vim'       " TypeScript support
Plug 'peitalin/vim-jsx-typescript'      " TSX highlighting

call plug#end()

let g:coc_java_home = 'C:\Program Files\Java\jdk-25'
let g:coc_user_config = {
  \ 'tailwindCSS.includeLanguages': {'javascript': 'javascript', 'typescript': 'typescriptreact', 'html': 'html'},
  \ 'tailwindCSS.emmetCompletions': v:true
\ }


" ======================
" General Configuration
" ======================
" Line numbers and scrolling
set number
set relativenumber
set scrolloff=5



" Tabs and indentation
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab




" Editor behavior
set mouse=a
set encoding=UTF-8
set visualbell
set noshowmode
set noswapfile



" Tab Title
if has("title")
  set title
  let &titlestring = 'NVIM: ' . expand('%:t')
endif

" Update title when switching buffers or files
autocmd BufEnter * let &titlestring = 'NVIM[' . (expand('%:t') == '' ? '[No File]' : expand('%:t') . ']')


" Colorscheme
colorscheme onedark
lua << EOF
require("onedark").setup {
  style = "darker",
  colors = {
    bg0 = "#0a0a0a",
  },
}
require("onedark").load()
EOF



" ======================
" NERDTree Configuration
" ======================
let g:NERDTreeWinSize = 20
let g:NERDTreeDirArrowExpandable = "+"
let g:NERDTreeDirArrowCollapsible = "~"
let g:NERDTreeHighlightActiveFile=1
let g:NERDTreeWinPos = "right"
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>

autocmd VimEnter * let g:project_root = system('git rev-parse --show-toplevel 2>/dev/null') |
      \ if v:shell_error == 0 | execute 'cd ' . g:project_root | execute 'NERDTree' g:project_root | endif




" ======================
" Lightline Config
" ======================
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'component_function': {
      \   'gitbranch': 'LightlineGitBranch'
      \ }
      \ }

function! LightlineGitBranch()
    if exists('*FugitiveHead')
        let l:branch = FugitiveHead()
        return l:branch !=# '' ? l:branch : ''
    endif
    return ''
endfunction



" ======================
" CoC Keybindings
" ======================
inoremap <silent><expr> <CR>    coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr>          <Tab>  pumvisible() ? "\<C-N>" : "\<Tab>"
noremap <expr>          <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
nnoremap <F3> :noh<CR>




" ======================
" Floaterm Configuration
" ======================
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
nnoremap <F5> :w<CR>:FloatermNew --autoclose=0 javac % && java %:r<CR>


" ======================
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

inoremap qw <Esc>
set timeoutlen=300




" ======================
" Auto pairs
" ======================
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>




" ======================
" Autoformat on save
" ======================
autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx,*.json,*.html,*.css :CocCommand prettier.formatFile

