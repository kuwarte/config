
local api = vim.api

vim.o.scrolloff = 5
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.mouse = "a"
vim.o.encoding = "UTF-8"
vim.o.visualbell = true
vim.o.showmode = false
vim.o.swapfile = false
vim.o.timeoutlen = 300
vim.o.clipboard = "unnamedplus"

vim.wo.number = true
vim.wo.relativenumber = true

local function start_menu()
    if vim.fn.argc() ~= 0 then return end

    local project_root = vim.fn.systemlist('git rev-parse --show-toplevel')[1]
    if vim.v.shell_error == 0 then
        vim.cmd('cd ' .. vim.fn.fnameescape(project_root))
    else
        vim.cmd('cd C:\\Users\\<username>\\code')
    end

    vim.cmd('enew')
    vim.bo.buftype = 'nofile'
    vim.bo.bufhidden = 'wipe'
    vim.bo.swapfile = false
    vim.bo.buflisted = false
    vim.wo.number = false
    vim.wo.relativenumber = false
    vim.wo.cursorline = false
    vim.wo.signcolumn = 'no'
    vim.bo.modifiable = true

    vim.api.nvim_buf_set_lines(0, 0, -1, false, {
        "                                                                                     ",
        "                  +kWM$m[,.                     NeoVIM -- Menu [config: kuwarte]     ",
        "                  `j#mdM@BJ~^.  .'.             =====================================",
        "                  ./@hOZh$@@#r>+Z/'             Manage project at the right side:    ",
        "               ....($aZkB@@@@@@@Bbc}:'.         [ m ] Menu                           ",
        "               :c@@@@@@@@@@@@@@@@@@@@@['			[ a ] Create File/Folder          ",
        "  )#*Z~:.     .,xB@@@@@@@@@@@@@@@@@@@vi^. .			[ m ] Move or Rename File/Folder  ",
        "  ~@@@@@@WaahaM@@$@*a@@@@@@@@@@@@@@@@@@Wahw			[ d ] Delete File/Folder          ",
        "  .Q@@@@@@@@@@@@$oakpdZW@@@@@@@@@@@@@@@@@C^			[ o ] Open File in System Editor  ",
        "   :d@@@@@@@@@#0O*@@@aCzk@@@@@@@@@@@@@@@@@J			[ C ] Open Project Tree           ",
        "   .:m@@@@@@@@MOQM@@@pXh@@@@@@@@@@@@@@@@@@@     [ <leader>qa ] Exit                  ",
        "   ..<*@@@@@@@$MdObZdZo#Mz!.._w$@@@@@@@@@@@     =====================================",
        "   'XCh@@@@@@@@kXM0v@00@f'>[: ,Z@@@@@@@@@@@     Using fzf:                           ",
        "     ^c@@@@@@@*Zw#@@@@@@z;.{~'_b@@@@@@@@@@@     [ <leader>ff ] Find Files            ",
        "   ..<a@@@@@#|'``'{#@@@@@ati]O$@@@@@@@@@@@@     [ <leader>fg ] Find Git Files        ",
        "   -o@@@@@@BY .</.'t@@@@@@@@@@@@@@@@@@@@@@@     [ <leader>fb ] Find Buffer Files     ",
        "    .'t@@@@@h_..^,_b@@@@@@@@@@@@@@@@@@@@@@@     =====================================",
        "    .l$@@@@@@@W#*B@@@@@@@@@@@@@@@@@@@@@@@@@     Keybindings:                         ",
        "    '|@$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     [ <leader>w ] Save File              ",
        "    .:lf@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     [ <leader>. ] Focus Tree             ",
        "     .'Y@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     [ fd ] Switch From [I] to [N]        ",
        "   .^/d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     [ :wa ] Save All Buffer              ",
        "   ..^II+#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     ====================================="
    })

    vim.cmd('file MENU')
    vim.bo.modifiable = false
    vim.cmd('silent! vertical rightbelow NERDTree')
    vim.cmd('wincmd l')
end

api.nvim_create_autocmd("VimEnter", { callback = start_menu })

api.nvim_create_autocmd("BufEnter", {
    callback = function()
        if vim.bo.buftype ~= 'nofile' then
            vim.wo.number = true
            vim.wo.relativenumber = true
        end
        if vim.fn.bufname('MENU') ~= '' and vim.bo.buftype ~= 'nofile' then
            vim.cmd('bwipeout MENU')
        end
    end
})

api.nvim_create_autocmd({"BufDelete", "BufWritePost", "TextChanged", "TextChangedI"}, {
    callback = function()
        if vim.fn.exists('*lightline#update') == 1 then
            vim.fn['lightline#update']()
        end
    end
})

api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.js","*.ts","*.tsx","*.jsx","*.json","*.html","*.css"},
    command = "CocCommand prettier.formatFile"
})

