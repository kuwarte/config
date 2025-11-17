local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<leader>w", ":w<CR>", opts)   -- Save File
map("n", "<leader>W", ":wa<CR>", opts)	-- Save All File
map("n", "<leader>q", ":q<CR>", opts)	-- Quit File
map("n", "<leader>qa", ":qa<CR>", opts) -- Quit All Files

map("n", "<Leader>.", ":NERDTreeFocus<CR>", opts)	-- Focus Tree
map("n", "<C-n>", ":NERDTree<CR>", opts)			
map("n", "<Leader>/", ":NERDTreeToggle<CR>", opts)	-- Toggle Tree 
map("n", "<C-l>", ":UndotreeToggle<CR>", opts)

map("n", "<Leader>1", "<Plug>lightline#bufferline#go(1)", {})
map("n", "<Leader>2", "<Plug>lightline#bufferline#go(2)", {})
map("n", "<Leader>3", "<Plug>lightline#bufferline#go(3)", {})
map("n", "<Leader>4", "<Plug>lightline#bufferline#go(4)", {})

map("n", "<Tab>", "<Plug>lightline#bufferline#go_next()", {})				-- Buffer Tab Switching 
map("n", "<leader>gp", "<Plug>lightline#bufferline#go_previous()", {})		-- Go Prev
map("n", "<Leader>mbn", "<Plug>lightline#bufferline#move_next()", {})		-- Move Buffer Next
map("n", "<Leader>mbp", "<Plug>lightline#bufferline#move_previous()", {})	-- Move Buffer Previous
map("n", "<leader>db", ":bnext<bar>bd#<CR>", opts)							-- Delete Buffer

map("n", "<Leader>ff", ":Files<CR>", opts)		-- Find Files
map("n", "<Leader>fb", ":Buffers<CR>", opts)	-- Find Buffer
map("n", "<Leader>fg", ":GFiles<CR>", opts)		-- Find Git Files
map("n", "<Leader>ft", ":Tags<CR>", opts)		-- Find Tags

map("t", "<F6>", [[<C-\><C-n>:FloatermToggle<CR>]], opts)	-- Terminal Close
map("n", "<F6>", ":FloatermToggle<CR>", opts)				-- Terminal Open

map("n", "<Leader>tb", ":TagbarToggle<CR>", opts)	-- Tagbar

map("i", "fd", "<Esc>", opts)

map("n", "<F3>", ":noh<CR>", opts)	-- Rem Highlight


