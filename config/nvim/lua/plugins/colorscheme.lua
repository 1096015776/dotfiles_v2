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
        separator_style = "thin",
        always_show_bufferline = true,
        sort_by = "directory",
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
      },
      highlights = {
        separator = { fg = "#282d38", bg = "NONE" },
        separator_selected = { fg = "#282d38", bg = "#424b5e" },
        indicator_selected = { fg = "#81A1C1", bg = "#424b5e" },
        close_button = { fg = "#BF616A", bg = "NONE" },
        modified = { fg = "#EBCB8B", bg = "#363d4d" },
        modified_selected = {
          fg = "#99C37A",
          bg = "#424b5e",
        },
        background = {
          bg = "#363d4d",
        },
        buffer_selected = {
          bg = "#424b5e",
          bold = true,
          italic = true,
        },
        close_button_selected = {
          bg = "#424b5e",
        },
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
