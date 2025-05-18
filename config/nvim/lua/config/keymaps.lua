-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local Util = require("lazyvim.util")

-- use system copy
map("v", "<c-c>", '"+y :call system("clip.exe", @+)<cr>', { noremap = true, silent = true })
map("i", "jk", "<esc>", { noremap = true, silent = true })
map("i", "<c-j>", "<esc>o", { noremap = true, silent = true })

-- tmux navigator
map({ "n", "t" }, "<C-h>", "<CMD>NavigatorLeft<CR>", { desc = "Navigate Left", silent = true })
map({ "n", "t" }, "<C-l>", "<CMD>NavigatorRight<CR>", { desc = "Navigate Right", silent = true })
map({ "n", "t" }, "<C-k>", "<CMD>NavigatorUp<CR>", { desc = "Navigate Up", silent = true })
map({ "n", "t" }, "<C-j>", "<CMD>NavigatorDown<CR>", { desc = "Navigate Down", silent = true })

-- use c-e to paste from 0 register
map("i", "<c-e>", function()
  vim.api.nvim_put({ vim.fn.getreg("0") }, "c", false, true)
end)
map("n", "<leader>p", '"*p')
map("i", "<c-v>", "<c-r>*")

map({ "n", "v" }, "<localleader>d", function()
  vim.cmd("DiffviewFileHistory %")
end, { desc = "fileHistory" })

-- emmet
map("v", "<c-z>", ':call emmet#expandAbbr(2,"")<cr>')
map("i", "<c-z>", '<c-r>=emmet#expandAbbr(0,"")<cr>')

-- line jump
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "g_")

map("v", "p", "P")
map("v", "P", "p")

map("n", "<esc>", function()
  local close_all_floating_windows = require("fx.utils").close_all_floating_windows
  vim.lsp.buf.clear_references()
  vim.cmd.nohlsearch()
  close_all_floating_windows()
end)

-- Print current file info
map("n", "<c-g>", function()
  local shorten_path_relative = require("fx.utils").shorten_path_relative

  local path = string.gsub(vim.fn.expand("%"), "^oil://", "")
  local short_path = shorten_path_relative(path)
  local number_of_lines = vim.fn.line("$")
  local branch = vim.b.gitsigns_head
  local lsp_client_names = table.concat(
    vim.tbl_map(function(client)
      return client.name
    end, vim.tbl_values(vim.lsp.get_clients({ bufnr = 0 }))),
    ", "
  )

  -- Copy path to clipboard
  vim.fn.setreg("+", short_path)

  vim.print(
    string.format('"%s"  Lines: %s  Branch: %s  LSP: %s', short_path, number_of_lines, branch, lsp_client_names)
  )
end)

-- map("n", "<2-LeftMouse>", function()
--   -- 将光标所在单词转义后设为搜索模式，并高亮匹配项
--   vim.fn.setreg("/", "\\V\\<" .. vim.fn.escape(vim.fn.expand("<cword>"), "\\") .. "\\>")
--   vim.api.nvim_command("set hls")
--   -- 将光标所在单词复制到系统剪贴板
--   vim.fn.setreg("+", vim.fn.expand("<cword>"))
-- end, { silent = true })
--
