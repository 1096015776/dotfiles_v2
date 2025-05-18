local group = vim.api.nvim_create_augroup("Setup", {})

-- Automatically close Vim if the quickfix window is the only one open
vim.api.nvim_create_autocmd("WinEnter", {
  group = group,
  callback = function()
    if vim.fn.winnr("$") == 1 and vim.fn.win_gettype() == "quickfix" then
      vim.cmd.q()
    end
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- 每打开一个vue文件时自动执行set foldexpr=nvim_treesitter#foldexpr() 命令

-- vim.api.nvim_create_autocmd({ "BufReadPost" }, {
--   pattern = { "*.vue" },
--   callback = function()
--     vim.defer_fn(function()
--     vim.opt.foldmethod = "expr"
--     vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
--     end, 1500)
--   end,
-- })

