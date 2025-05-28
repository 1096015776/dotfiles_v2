return {
  {
    "akinsho/bufferline.nvim",
    -- disable diagnostics
    opts = {
      options = {
        -- mode = "tabs",
        diagnostics = false,
        style_preset = "minimal",
        buffer_close_icon = "󰅖",
        modified_icon = "● ",
        close_icon = "󰅖",
        separator_style = "thick",
        always_show_bufferline = true,
        sort_by = "directory",
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
      },
      highlights = {
        separator = { fg = "#4C566A", bg = "NONE" }, -- nord3 分隔线
        separator_selected = { fg = "#81A1C1", bg = "NONE" }, -- nord9 分隔线
        indicator_selected = { fg = "#81A1C1", bg = "NONE" }, -- nord9 当前标签指示器
        close_button = { fg = "#BF616A", bg = "NONE" }, -- nord11 关闭按钮
        modified = { fg = "#EBCB8B", bg = "NONE" }, -- nord13 修改标记
      },
    },
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      require("onedarkpro").setup({
        styles = {
          types = "NONE",
          methods = "NONE",
          numbers = "NONE",
          strings = "NONE",
          comments = "italic",
          keywords = "italic",
          constants = "NONE",
          functions = "italic",
          operators = "NONE",
          variables = "NONE",
          parameters = "NONE",
          conditionals = "italic",
          virtual_text = "NONE",
        },
        options = {
          cursorline = true, -- Use cursorline highlighting?
          transparency = true, -- Use a transparent background?
          terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
          lualine_transparency = true, -- Center bar transparency?
          highlight_inactive_windows = true, -- When the window is out of focus, change the normal background?
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
