-- change lualineColor
-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "#2A2A37" })

-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "#23262C" })


require("gitsigns").setup({
  signs_staged_enable = false,
  current_line_blame = true,
})

vim.api.nvim_create_user_command("RemoveComments", function()
  vim.cmd("%s/\\/\\/.*//g")
end, {})

-- require('fx.snippets.vue')
