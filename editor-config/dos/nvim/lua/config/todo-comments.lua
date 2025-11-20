local ok, todo = pcall(require, "todo-comments")
if not ok then
  return
end

todo.setup({
  signs = true,      
  sign_priority = 7,

  keywords = {
    TODO = { icon = "*", color = "info" },
    FIX  = { icon = "!", color = "error", alt = { "FIXME", "BUG" } },
    HACK = { icon = "?", color = "warning" },
    NOTE = { icon = "-", color = "hint", alt = { "INFO" } },
    PERF = { icon = "~", color = "default" },
  },

  highlight = {
    multiline = false,
    keyword = "bg",
    after = "fg",
  },
})

vim.keymap.set("n", "]t", function()
  todo.jump_next()
end, { desc = "Next TODO" })

vim.keymap.set("n", "[t", function()
  todo.jump_prev()
end, { desc = "Previous TODO" })

