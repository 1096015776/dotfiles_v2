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
        fill = {
          bg = "NONE",
        },
        background = {
          bg = "#282C34",
        },

        buffer_selected = {
          bg = "#3b4252",
          italic = true,
        },
        buffer_visible = {
          bg = "#3b4252",
          italic = true,
        },

        numbers = {
          bg = "#282C34",
        },
        numbers_selected = {
          bg = "#3b4252",
        },
        numbers_visible = {
          bg = "#2A2F3A",
          italic = true,
        },

        diagnostic = {
          bg = "#282C34",
        },
        diagnostic_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },
        diagnostic_visible = {
          bg = "#2A2F3A",
        },

        hint = {
          bg = "#282C34",
        },
        hint_visible = {
          bg = "#2A2F3A",
        },
        hint_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },
        hint_diagnostic = {
          bg = "#282C34",
        },
        hint_diagnostic_visible = {
          bg = "#2A2F3A",
        },
        hint_diagnostic_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },

        info = {
          bg = "#282C34",
        },
        info_visible = {
          bg = "#2A2F3A",
        },
        info_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },
        info_diagnostic = {
          bg = "#282C34",
        },
        info_diagnostic_visible = {
          bg = "#2A2F3A",
        },
        info_diagnostic_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },

        warning = {
          bg = "#282C34",
        },
        warning_visible = {
          bg = "#2A2F3A",
        },
        warning_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },
        warning_diagnostic = {
          bg = "#282C34",
        },
        warning_diagnostic_visible = {
          bg = "#2A2F3A",
        },
        warning_diagnostic_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },
        error = {
          bg = "#282C34",
        },
        error_visible = {
          bg = "#2A2F3A",
        },
        error_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },
        error_diagnostic = {
          bg = "#282C34",
        },
        error_diagnostic_visible = {
          bg = "#2A2F3A",
        },
        error_diagnostic_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },

        close_button = {
          bg = "#282C34",
        },
        close_button_visible = {
          bg = "#2A2F3A",
        },
        close_button_selected = {
          bg = "#3b4252",
        },

        duplicate = {
          bg = "#282C34",
        },
        duplicate_selected = {
          bg = "#3b4252",
        },
        duplicate_visible = {
          bg = "#2A2F3A",
        },

        separator = {
          fg = "#2e3440",
          bg = "NONE",
        },
        separator_selected = {
          fg = "#282C34",
          bg = "#3b4252",
        },
        separator_visible = {
          fg = "#3b4252",
          bg = "#3b4252",
        },
        modified = {
          bg = "#282C34",
        },
        modified_selected = {
          bg = "#3b4252",
        },
        modified_visible = {
          bg = "#2A2F3A",
        },
        indicator_selected = {
          fg = "#81a1c1",
          bg = "#3b4252",
        },
        pick = {
          bg = "#282C34",
          bold = true,
          italic = true,
        },
        pick_selected = {
          bg = "#3b4252",
          bold = true,
          italic = true,
        },
        pick_visible = {
          bg = "#2A2F3A",
          bold = true,
          italic = true,
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
          transparency = false, -- Use a transparent background?
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
