                                   "`)@@hr>`.                                        
                                   ".+$@@@@p);.                                      
                                   ".>a@$B@@@BC~`.                                   
                                   " ;Q@BkpM@@@@#t,..                                
                                   " '{@@oZOw#@@@@@o]`.                              
                                   " .+a@WdOOOpM@@@@@WOI.       .'^.                 
                                   " .IJ@@aOOOOZhB@@@@@@hj^   .'+dO^                 
                                   "  '}B@#wOOOmpkW@@@@@@@$Q|v0a@$J'                 
                                   "  .-W@WdOZhMB@@@@@@@@@@@@@@@@b|[i"'.             
                                   "  .[$@$kOmbM@@@@@@@@@@@@@@@@@@@@@@MC1;.          
                              ".;[1(|){v@@@MoB@@@@@@@@@@@@@@@@@@@@@@@@@@@$Ji'.       
    "..'..                     .'_b@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@C~`.     
   ".,d@@h);^...               .'+W@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@k}^.:X[`     
   ".I$@@@@@@$on!'.           .+W@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$Z<'.     `
   ".,d@@@@@@@@@@@$W#akbddba*W@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@MabpwhB
    "`/@@@@@@@@@@@@@@@@@@@@@@@@@@$bh@@@aJk@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B-
    ".ld@@@@@@@@@@@@@@@@@@@@@@@@@@amh@WwJa@WmQo@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@X[".
     "'_W@@@@@@@@@@@@@@@@@@@@@@@@@$kwo$okBavnb$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$X".
      "`/@@@@@@@@@@@@@@@@@@@@@jiitb@$@@@@@#aWWhp*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@d;
      "."f@@@@@@@@@@@@@@@@@@@@@@#0a@@@@@@@@hn|txb$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O
       "."r$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         "^)W@@@@@@@@@@@@@@@@$z[>ih@@@@@@@*r~}z*@@@@@@BWW@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          ".~p@@@@@@@@@@@@@@@@dW@@@@@@@@@@@@$pzk@@@p]^...`|$@@@@@@@@@@@@@@@@@@@@@@@@@
        ".'i0@@@@@@@@@@@@@@@@@@@B);fWX>mMf;nW@@@@b<..... ..`}@@@@@@@@@@@@@@@@@@@@@@@@
      "'-k#@@@@@@@@@@@@@@@@@@@@WI;p@o)>p@$0>/M@@*-...xx`.  .'|@@@@@@@@@@@@@@@@@@@@@@@
      "..^!+}Q@@@@@@@@@@@@@@@@@@*W@@MXxM@@@$@@@@k~. .^w/'  ..l@@@@@@@@@@@@@@@@@@@@@@@
           ""v@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@a+.  .;o-. ..+@@@@@@@@@@@@@@@@@@@@@@@
           ":X@@@@@@@@@@@@@@@dr||jmM@@@@@@@@@@@@@J;.. .I+...>B@@@@@@@@@@@@@@@@@@@@@@@
          ".>Z@@@@@@@@@@@@Bz;......^)d@@@@@@@@@@@@k|:...':)C@@@@@@@@@@@@@@@@@@@@@@@@@
      "...^]d@@@@@@@@@@@@$<.  .Zl.  .;Y@@@@@@@@@@@@@@#mk$@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     "."|O$@@@@@@@@@@@@@@/`    lo".  .+*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      ".>p$@@@@@@@@@@@@@@]'    '(w'  .>p@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
       "..^<zwa@@@@@@@@@@WI.   .^Y/..`)$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           "`f$@@@@@@@@@@@M+'   ....;z$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          ".[*@@@@@@@@@@@@@@amOYxCwh@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          ",n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          "<h@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         ".[$#kM@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         ".<v>;Y@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
             ".)o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            "..fB@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            ".}o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         ".."xW@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        "`}p#@@@@$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        ".',l<+~l_m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                ".)o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
	
" |==================================== == NeoVIM Config
"
" Installation of vim-plug
"	
"	iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | `
"		ni "$env:LOCALAPPDATA\nvim-data\site\autoload\plug.vim" -Force
" 
"
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
	" syntaxToggleTree: <Space>/
	" syntaxFocusTree: <Space>.
	" syntaxMenu: m
	" syntaxRefresh: R
	" syntaxChangeRootDirectory: C
	" syntaxOpenFileInNewTab: t
	" syntaxOpenFileInHorizontalSplit: i
	" syntaxOpenFileInVerticalSplit: s
Plug 'itchyny/lightline.vim'          
Plug 'mengelbrecht/lightline-bufferline'
Plug 'preservim/tagbar', {'on': 'TagbarToggle'}
	" syntaxToggleTagbar: <Space>tb 
Plug 'junegunn/fzf'     
Plug 'junegunn/fzf.vim'    
	" syntaxFileFinder: <Space>ff
	" syntaxGitFileFinder: <Space>fg
Plug 'navarasu/onedark.nvim'                
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
	" LSP and Intellisense
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
Plug 'windwp/nvim-autopairs'
	" Autopairs
Plug 'NvChad/nvim-colorizer.lua'
	" Colorizer for styling

" --- Language Specific ---
Plug 'pangloss/vim-javascript'                 " JavaScript syntax
Plug 'maxmellon/vim-jsx-pretty'               " JSX syntax
Plug 'HerringtonDarkholme/yats.vim'           " TypeScript syntax
Plug 'leafgarland/typescript-vim'             " TypeScript support
Plug 'peitalin/vim-jsx-typescript'            " TSX highlighting

call plug#end()

lua require("config.colorizer")
lua require("config.autopairs")
lua require("config.onedark")










" ======================================================
" CoC Config
" ======================================================

let g:tagbar_ctags_bin = 'C:/Users/<username>/AppData/Local/Microsoft/WinGet/Packages/UniversalCtags.Ctags_Microsoft.Winget.Source_8wekyb3d8bbwe/ctags.exe'
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
set clipboard=unnamedplus

nnoremap <leader>w :w<CR>
nnoremap <leader>W :wa<CR>
nnoremap <leader>q :q<CR>

" Window / tab title
if has("title")
    set title
    let &titlestring = 'NVIM: ' . expand('%:t')
endif
autocmd BufEnter * let &titlestring = 'NeoVIM -- ' . (expand('%:t') == '' ? '[No File]' : expand('%:t'))


if has('gui_running') 
	set guioptions-=e
endif










" ======================================================
" Main Menu
" ======================================================
function! StartMenu()
  if argc() != 0
    return
  endif

  let l:project_root = system('git rev-parse --show-toplevel 2>/dev/null')
  if v:shell_error == 0
    execute 'cd' fnameescape(trim(l:project_root))
  else
    execute 'cd C:\Users\<username>\code'
  endif

  enew
  setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted
  setlocal nonumber norelativenumber nocursorline signcolumn=no

  setlocal modifiable

call append(0, [	                                              
			\ "                                                                                      ",
			\ "                  +kWM$m[,.						NeoVIM -- Menu [config: kuwarte]     ",
			\ "                  `j#mdM@BJ~^.  .'.				-------------------------------------",
			\ "                  ./@hOZh$@@#r>+Z/'				Manage project at the right side:    ",
			\ "               ....($aZkB@@@@@@@Bbc}:'.			[ m ] Menu                           ",
			\ "               :c@@@@@@@@@@@@@@@@@@@@@['			[ a ] Create File/Folder		 ",
			\ "  )#*Z~:.     .,xB@@@@@@@@@@@@@@@@@@@vi^. .			[ m ] Move or Rename File/Folder ",
			\ "  ~@@@@@@WaahaM@@$@*a@@@@@@@@@@@@@@@@@@Wahw			[ d ] Delete File/Folder		 ",
			\ "  .Q@@@@@@@@@@@@$oakpdZW@@@@@@@@@@@@@@@@@C^			[ o ] Open File in System Editor ",
			\ "   :d@@@@@@@@@#0O*@@@aCzk@@@@@@@@@@@@@@@@@J		[ C ] Open Project Tree				 ",
			\ "   .:m@@@@@@@@MOQM@@@pXh@@@@@@@@@@@@@@@@@@@		[ :qa ] Exit						 ",
			\ "   ..<*@@@@@@@$MdObZdZo#Mz!.._w$@@@@@@@@@@@		-------------------------------------",
			\ "   'XCh@@@@@@@@kXM0v@00@f'>[: ,Z@@@@@@@@@@@		Using fzf:							 ",
			\ "     ^c@@@@@@@*Zw#@@@@@@z;.{~'_b@@@@@@@@@@@		[ <leader>ff ] Find Files			 ",
			\ "   ..<a@@@@@#|'``'{#@@@@@ati]O$@@@@@@@@@@@@		[ <leader>fg ] Find Git Files		 ",
			\ "   -o@@@@@@BY .</.'t@@@@@@@@@@@@@@@@@@@@@@@		[ <leader>fb ] Find Buffer Files	 ",
			\ "    .'t@@@@@h_..^,_b@@@@@@@@@@@@@@@@@@@@@@@		-------------------------------------",
			\ "    .l$@@@@@@@W#*B@@@@@@@@@@@@@@@@@@@@@@@@@		Keybindings:						 ",
			\ "    '|@$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@		[ <leader>w ] Save File				 ",
			\ "    .:lf@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@		[ <leader>nf ] Focus Tree			 ", 
			\ "     .'Y@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@		[ fd ] Switch Modes					 ",
			\ "   .^/d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@		[ :wa ] Save All Buffer				 ",
			\ "   ..^II+#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@		-------------------------------------"                                       
      \ ]) 


  file MENU

  setlocal nomodifiable

  silent! vertical rightbelow NERDTree
  wincmd l
endfunction

autocmd VimEnter * if argc() == 0 | call StartMenu() | endif

autocmd BufEnter * if &buftype !=# 'nofile' | 
      \ if bufname('MENU') !=# '' | execute 'bwipeout MENU' | endif | 
      \ endif










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
let NERDTreeShowHidden=1

nnoremap <Leader>. :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <Leader>/ :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>










" ======================================================
" Status Line
" ======================================================
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

set laststatus=2
let g:lightline = {
	  \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [
      \       [ 'mode', 'paste' ],
	  \		  [ 'gitbranch', 'readonly' ]
      \   ],
      \   'right': [
	  \       [ 'lineinfo' ],
	  \       [ 'percent' ],
	  \		  [ 'fileformat', 'fileencoding', 'filetype' ],
	  \		  [ 'buffers' ]
      \   ]
      \ },
      \ 'tabline': {
      \   'right': [ [ 'close' ] ],
	  \   'left': [ [ 'buffers' ] ]
      \ },
	  \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

function! LightlineBufferlineMaxWidth() 
	return 6 
endfunction 

let g:lightline#bufferline#max_width = 'LightlineBufferlineMaxWidth' 
let g:lightline.component_expand.buffers = 'lightline#bufferline#buffers' 
let g:lightline#bufferline#modified = ' [+]' 
let g:lightline#bufferline#more_buffers = '...' 

function! LightlineBufferlineDynamicNumbers() 
	let l:buffers = range(1, bufnr('$')) 
	let l:map = {} for i in range(len(l:buffers)) 
	let l:map[i+1] = (i+1) . ':' 
endfor 
return l:map 
endfunction 
	
autocmd BufDelete * call lightline#update()

function! LightlineGitBranch()
    if exists('*FugitiveHead')
        let l:branch = FugitiveHead()
        return l:branch !=# '' ? l:branch : ''
    endif
    return ''
endfunction

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

nnoremap <Leader>1 <Plug>lightline#bufferline#go(1)
nnoremap <Leader>2 <Plug>lightline#bufferline#go(2)
nnoremap <Leader>3 <Plug>lightline#bufferline#go(3)
nnoremap <Leader>4 <Plug>lightline#bufferline#go(4)

nnoremap <Tab>   <Plug>lightline#bufferline#go_next()
nnoremap <leader>gp <Plug>lightline#bufferline#go_previous()

nnoremap <Leader>mbn <Plug>lightline#bufferline#move_next()
nnoremap <Leader>mbp <Plug>lightline#bufferline#move_previous()
nnoremap <leader>db :bnext<bar>bd#<CR>










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
inoremap fd <Esc>










" ======================================================
" Autoformat on Save
" ======================================================
autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx,*.json,*.html,*.css :CocCommand prettier.formatFile

