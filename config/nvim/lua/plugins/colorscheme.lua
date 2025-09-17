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
          bg = "#282C34",
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
        indicator_visible = {
          -- fg = "#81a1c1",
          bg = "#282C34",
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
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      flavour = "frappe",
      transparent_background = true,
      term_colors = true,
      styles = {
        comments = { "italic" },
        conditionals = { "bold", "italic" },
        constants = { "bold" },
        keywords = { "bold" },
        loops = { "italic", "bold" },
      },
      color_overrides = {},
      custom_highlights = function(C)
        return {
          RainbowDelimiterRed = { fg = "#FF5D62" },
          RainbowDelimiterYellow = { fg = "#E6C384" },
          RainbowDelimiterBlue = { fg = "#7FB4CA" },
          RainbowDelimiterOrange = { fg = "#FFA066" },
          RainbowDelimiterGreen = { fg = "#98BB6C" },
          RainbowDelimiterViolet = { fg = "#D27E99" },
          RainbowDelimiterCyan = { fg = "#7AA89F" },
          -- RainbowDelimiterRed = { fg = "#FF1A75" },
          -- RainbowDelimiterYellow = { fg = "#f1ff5e" },
          -- RainbowDelimiterBlue = { fg = "#28C9FF" },
          -- RainbowDelimiterOrange = { fg = "#FFAA54" },
          -- RainbowDelimiterGreen = { fg = "#5eff6c" },
          -- RainbowDelimiterViolet = { fg = "#bd5eff" },
          -- RainbowDelimiterCyan = { fg = "#33FFFF" },
          FloatBorder = { fg = C.yellow },
          ["@tag.tsx"] = { bold = true },
          ["@keyword.import.tsx"] = { italic = true, fg = C.red },
          ["@keyword.import.typescript"] = { italic = true, fg = C.red },
          ["@keyword.export.tsx"] = { italic = true, fg = C.red },
          ["@keyword.export.typescript"] = { italic = true, fg = C.red },
        }
      end,
      integrations = {
        telescope = {
          enabled = true,
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
        flash = true,
        barbar = true,
        gitsigns = true,
        leap = true,
        neotree = true,
        neotest = true,
        mason = true,
        noice = true,
        notify = true,
        which_key = true,
        semantic_tokens = true,
        mini = {
          enabled = true,
        },
        overseer = true,
        cmp = true,
        dap = true,
        dap_ui = true,
        treesitter_context = true,
        treesitter = true,
        window_picker = true,
        rainbow_delimiters = true,
        symbols_outline = true,
        lsp_trouble = true,
        illuminate = {
          enabled = true,
          lsp = true,
        },
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
          inlay_hints = {
            background = false,
          },
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
      -- colorscheme = "catppuccin",
    },
  },
}
