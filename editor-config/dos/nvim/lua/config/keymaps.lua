local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<leader>w", ":w<CR>", opts)   -- Save File
map("n", "<leader>W", ":ww<CR>", opts)	-- Save All File
map("n", "<leader>q", ":q<CR>", opts)	-- Quit File
map("n", "<leader>qa", ":qq<CR>", opts) -- Quit All Files

map("n", "<Leader>.", ":NERDTreeFocus<CR>", opts)	-- Focus Tree
map("n", "<C-n>", ":NERDTree<CR>", opts)			
map("n", "<Leader>/", ":NERDTreeToggle<CR>", opts)	-- Toggle Tree 
map("n", "<C-l>", ":UndotreeToggle<CR>", opts)

map("n", "<Leader>1", "<Plug>lightline#bufferline#go(1)", {})
map("n", "<Leader>2", "<Plug>lightline#bufferline#go(2)", {})
map("n", "<Leader>3", "<Plug>lightline#bufferline#go(3)", {})
map("n", "<Leader>4", "<Plug>lightline#bufferline#go(4)", {})
map("n", "<Leader>5", "<Plug>lightline#bufferline#go(5)", {})
map("n", "<Leader>6", "<Plug>lightline#bufferline#go(6)", {})
map("n", "<Leader>7", "<Plug>lightline#bufferline#go(7)", {})
map("n", "<Leader>8", "<Plug>lightline#bufferline#go(8)", {})
map("n", "<Leader>9", "<Plug>lightline#bufferline#go(9)", {})

map("n", "<Tab>", "<Plug>lightline#bufferline#go_next()", {})				-- Buffer Tab Switching 
map("n", "<leader>gp", "<Plug>lightline#bufferline#go_previous()", {})		-- Go Prev
map("n", "<Leader>mbn", "<Plug>lightline#bufferline#move_next()", {})		-- Move Buffer Next
map("n", "<Leader>mbp", "<Plug>lightline#bufferline#move_previous()", {})	-- Move Buffer Previous
map("n", "<leader>db", ":bnext<bar>bd#<CR>", opts)							-- Delete Buffer

-- FZF
map("n", "<Leader>,", ":Files<CR>", opts)		-- Find Files
map("n", "<Leader>fb", ":Buffers<CR>", opts)	-- Find Buffer
map("n", "<Leader>fg", ":GFiles<CR>", opts)		-- Find Git Files
map("n", "<Leader>ft", ":Tags<CR>", opts)		-- Find Tags

-- Floaterm
map("t", "<F6>", [[<C-\><C-n>:FloatermToggle<CR>]], opts)	-- Terminal Close
map("n", "<F6>", ":FloatermToggle<CR>", opts)				-- Terminal Open
vim.g.floaterm_keymap_new  = "<F7>"
vim.g.floaterm_keymap_prev = "<F8>"
vim.g.floaterm_keymap_next = "<F9>"

-- Tagbar
map("n", "<Leader>tb", ":TagbarToggle<CR>", opts)	-- Tagbar

-- Quick escape
map("i", "fd", "<Esc>", opts)

-- COC
map("n", "<F3>", ":noh<CR>", opts)	-- Rem Highlight

local keys = { "<MiddleMouse>", "<2-MiddleMouse>", "<3-MiddleMouse>", "<4-MiddleMouse>" }

for _, key in ipairs(keys) do
    vim.keymap.set("n", key, "<Nop>")
    vim.keymap.set("i", key, "<Nop>")
    vim.keymap.set("v", key, "<Nop>")
end

vim.keymap.set("i", "<CR>", 'coc#pum#visible() ? coc#pum#confirm() : "\\<CR>"', { expr = true, silent = true })

vim.keymap.set("i", "<Tab>", 'pumvisible() ? "\\<C-N>" : "\\<Tab>"', { expr = true, silent = true })

vim.keymap.set("i", "<S-Tab>", 'pumvisible() ? "\\<C-P>" : "\\<C-H>"', { expr = true, silent = true })
