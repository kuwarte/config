" WINDOWS NeoVIM CONFIG

" ======================================================
" Plugins
" ======================================================
call plug#begin()

" --- Essentials ---
Plug 'tpope/vim-surround'						
	" syntaxYouSurround: ys{motion}{surround_char}
		" {motion}: {iw} (inner word), {$)} (rest of line), {s(} (whole line), {ap} (paragraph text), {it} (inner text)  
	" syntaxChangeSurround: cs{old}{new}
	" syntaxDeleteSurround: ds{char}
	" syntaxYouSurroundInVisualMode: V{char}
Plug 'tpope/vim-commentary'                    
	" syntaxComment: gcc
	" syntaxCommentInVisualMode: gc
	" syntaxCommentMotion: gc{motion}
Plug 'preservim/nerdtree'
	" syntaxToggleTree: <Space>nn
	" syntaxFocusTree: <Space>nf
	" syntaxMenu: m
	" syntaxRefresh: R
	" syntaxChangeRootDirectory: C
	" syntaxOpenFileInNewTab: t
	" syntaxOpenFileInHorizontalSplit: i
	" syntaxOpenFileInVerticalSplit: s
Plug 'itchyny/lightline.vim'                   
Plug 'preservim/tagbar', {'on': 'TagbarToggle'}
	" syntaxToggleTagbar: <Space>tb 
Plug 'junegunn/fzf'     
Plug 'junegunn/fzf.vim'    
	" syntaxFileFinder: <Space>ff
	" syntaxGitFileFinder: <Space>fg
Plug 'navarasu/onedark.nvim'                
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
	" LSP and Intellisense
		"Java
		"JavaScript
		"TypeScript
		"JSX/TSX
Plug 'tpope/vim-fugitive'                      
	" Git Integration
Plug 'matze/vim-move'                          
	" syntaxMoveUpInNormalAndVisualMode: <Alt>k
	" syntaxMoveDownInNormalAndVisualMode: <Alt>j
Plug 'voldikss/vim-floaterm'
	" syntaxToggleFloaterm: <F6>
Plug 'alvan/vim-closetag'                      
	" Auto close HTML tags

" --- Language Specific ---
Plug 'pangloss/vim-javascript'                 " JavaScript syntax
Plug 'maxmellon/vim-jsx-pretty'               " JSX syntax
Plug 'HerringtonDarkholme/yats.vim'           " TypeScript syntax
Plug 'leafgarland/typescript-vim'             " TypeScript support
Plug 'peitalin/vim-jsx-typescript'            " TSX highlighting

call plug#end()










" ======================================================
" CoC Config
" ======================================================
let g:coc_java_home = 'C:\Program Files\Java\jdk-25'
let g:tagbar_ctags_bin = 'C:/Users/<Username>/AppData/Local/Microsoft/WinGet/Packages/UniversalCtags.Ctags_Microsoft.Winget.Source_8wekyb3d8bbwe/ctags.exe'
let g:coc_user_config = {
      \ 'tailwindCSS.includeLanguages': {
      \   'javascript': 'javascript',
      \   'typescript': 'typescriptreact',
      \   'html': 'html'
      \ },
      \ 'tailwindCSS.emmetCompletions': v:true
      \ }
let g:undotree_DiffAuto = 0










" ======================================================
" General Settings
" ======================================================
let mapleader="\<Space>"

" Line numbers & scrolling
set number
set relativenumber
set scrolloff=5

" Tabs & indentation
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
set timeoutlen=300

" Window / tab title
if has("title")
    set title
    let &titlestring = 'NVIM: ' . expand('%:t')
endif
autocmd BufEnter * let &titlestring = 'NeoVIM -- ' . (expand('%:t') == '' ? '[No File]' : expand('%:t'))
autocmd VimEnter * if argc() == 0 | NERDTree C:\Users\<Username>\code | endif










" ======================================================
" Colorscheme Config
" ======================================================
colorscheme onedark
lua << EOF
require("onedark").setup {
  style = "darker",
  colors = { bg0 = "#111111" },
}
require("onedark").load()
EOF










" ======================================================
" Tree
" ======================================================
let g:NERDTreeWinSize = 20
let g:NERDTreeDirArrowExpandable = "+"
let g:NERDTreeDirArrowCollapsible = "~"
let g:NERDTreeHighlightActiveFile = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1

nnoremap <Leader>nf :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <Leader>nn :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>

autocmd VimEnter * let g:project_root = system('git rev-parse --show-toplevel 2>/dev/null') |
      \ if v:shell_error == 0 | execute 'cd ' . g:project_root | execute 'NERDTree' g:project_root | endif









" ======================================================
" Status Line
" ======================================================
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

function! LightlineGitBranch()
    if exists('*FugitiveHead')
        let l:branch = FugitiveHead()
        return l:branch !=# '' ? l:branch : ''
    endif
    return ''
endfunction










" ======================================================
" CoC Keybindings
" ======================================================
inoremap <silent><expr> <CR>    coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab>           pumvisible() ? "\<C-N>" : "\<Tab>"
noremap <expr> <S-Tab>          pumvisible() ? "\<C-P>" : "\<C-H>"
nnoremap <F3> :noh<CR>










" ======================================================
" Floaterm
" ======================================================
tnoremap <F6> <C-\><C-n>:FloatermToggle<CR>
nnoremap <F6> :FloatermToggle<CR>
let g:floaterm_keymap_new  = '<F7>'
let g:floaterm_keymap_prev = '<F8>'
let g:floaterm_keymap_next = '<F9>'


nnoremap <Leader>tb :TagbarToggle<CR>
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>fg :GFiles<CR>
nnoremap <Leader>ft :Tags<CR>










" ======================================================
" Disable Middle Mouse
" ======================================================
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

" Quick escape mapping
inoremap qw <Esc>










" ======================================================
" Auto Pairs
" ======================================================
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>










" ======================================================
" Autoformat on Save
" ======================================================
autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx,*.json,*.html,*.css :CocCommand prettier.formatFile


