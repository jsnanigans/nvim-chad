local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


-- auto set rnu when buffer is focused
autocmd("BufEnter", {
  pattern = "*",
  command = "set rnu",
})

-- auto 20 lines padding when scrolling

vim.cmd [[
  augroup ScrollPadding
    autocmd!
    autocmd CursorMoved * set scrolloff=12
  augroup END
]]
