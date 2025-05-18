return {
  "sindrets/diffview.nvim",
  {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    config = function()
      local dropbar_api = require("dropbar.api")
      vim.keymap.set("n", "<Leader>;", dropbar_api.pick, { desc = "Pick symbols in winbar" })
      vim.keymap.set("n", "[;", dropbar_api.goto_context_start, { desc = "Go to start of current context" })
      vim.keymap.set("n", "];", dropbar_api.select_next_context, { desc = "Select next context" })
    end,
  },
  {
    "kylechui/nvim-surround",
    opts = {
      keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "ys",
        normal_cur = "yss",
        normal_line = "yS",
        normal_cur_line = "ySS",
        visual = "gs",
        visual_line = "gS",
        delete = "ds",
        change = "cs",
        change_line = "cS",
      },
    },
  },
  {
    "axelvc/template-string.nvim",
    opts = {
      filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" },
      remove_template_string = true,
      restore_quotes = {
        normal = [[']],
        jsx = [["]],
      },
    },
    event = "InsertEnter",
    ft = { "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" },
  },

  {
    "echasnovski/mini.ai",
    enabled = false,
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    config = function()
      local treesitter = require("mini.ai").gen_spec.treesitter

      require("mini.ai").setup({
        custom_textobjects = {
          -- Whole buffer
          e = function()
            local from = { line = 1, col = 1 }
            local to = {
              line = vim.fn.line("$"),
              col = math.max(vim.fn.getline("$"):len(), 1),
            }
            return { from = from, to = to }
          end,

          -- Current line
          j = function(args)
            local index_of_first_non_whitespace_character = string.find(vim.fn.getline("."), "%S")
            local col = args == "i" and index_of_first_non_whitespace_character or 1

            return {
              from = { line = vim.fn.line("."), col = col },
              to = { line = vim.fn.line("."), col = math.max(vim.fn.getline("."):len(), 1) },
            }
          end,

          -- Function definition (needs treesitter queries with these captures)
          m = treesitter({ a = "@function.outer", i = "@function.inner" }),

          o = treesitter({
            a = { "@conditional.outer", "@loop.outer" },
            i = { "@conditional.inner", "@loop.inner" },
          }),
        },
      })
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    ---@type Flash.Config
    opts = {
      modes = {
        treesitter = {
          labels = "abcdefghijklmnopqrstuvwxyz",
          jump = { pos = "range", autojump = false },
          search = { incremental = false },
          label = { before = true, after = true, style = "inline" },
          highlight = {
            backdrop = false,
            matches = false,
          },
        },
      },
    },
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  -- console logs
  {
    "gaelph/logsitter.nvim",
    opts = {
      path_format = "default",
      prefix = "🚀 ->",
      separator = "->",
    },
  },
  -- console logs
  {
    "Goose97/timber.nvim",
    config = function()
      require("timber").setup()
    end,
    enabled = false,
  },
  {
    "rmagatti/alternate-toggler",
    config = function()
      require("alternate-toggler").setup({
        alternates = {
          ["true"] = "false",
          ["True"] = "False",
          ["TRUE"] = "FALSE",
          ["Yes"] = "No",
          ["YES"] = "NO",
          ["1"] = "0",
          ["<"] = ">",
          ["("] = ")",
          ["["] = "]",
          ["{"] = "}",
          ['"'] = "'",
          ['""'] = "''",
          ["+"] = "-",
          ["==="] = "!==",
          ["=="] = "!=",
          ["const"] = "let",
        },
      })
    end,
    event = { "BufReadPost" },
  },
  { "tiagovla/scope.nvim", config = true }
}
