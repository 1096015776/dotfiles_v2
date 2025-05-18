-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable clipboard
vim.opt.clipboard = {
  name = "void",
  copy = {
    ["+"] = true,
    ["*"] = true,
  },
  paste = {
    ["+"] = {},
    ["*"] = {},
  },
}
vim.g.ai_cmp = false
