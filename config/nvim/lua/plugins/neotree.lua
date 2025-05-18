return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      -- width = 25,
      mappings = {
        ["<c-f>"] = function(state)
          local node = state.tree:get_node()
          local path = node:get_parent_id()
          if node.type == "directory" then
            path = node:get_id()
          end
          require("neo-tree").close_all()
          require("grug-far").open({
            prefills = { paths = path },
          })
        end,
        ["<c-e>"] = function(state)
          local node = state.tree:get_node()
          local path = node:get_parent_id()
          if node.type == "directory" then
            path = node:get_id()
          end
          require("neo-tree").close_all()
          local term_opts = { cwd = path, esc_esc = false, ctrl_hjkl = false, border = "single" }
          require("snacks").terminal({ "zsh", "-c", "cd " .. path .. " && yazi" }, term_opts)
        end,
        ["<localleader>d"] = function(state)
          local node = state.tree:get_node()
          local path = node:get_parent_id()
          if node.type == "directory" then
            path = node:get_id()
          end
          require("neo-tree").close_all()
          vim.cmd("DiffviewFileHistory " .. path)
        end,
      },
    },
  },
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root(), reveal = true })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
    { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (Root Dir)", remap = true },
    { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
    {
      "<leader>ge",
      function()
        require("neo-tree.command").execute({ source = "git_status", toggle = true })
      end,
      desc = "Git Explorer",
    },
    {
      "<leader>be",
      function()
        require("neo-tree.command").execute({ source = "buffers", toggle = true })
      end,
      desc = "Buffer Explorer",
    },
  },
}
