local check_file_size = function(_, bufnr)
  return vim.api.nvim_buf_line_count(bufnr) > 100000
end

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed, {
        "bash",
        "html",
        "javascript",
        "tsx",
        "typescript",
        "css",
        "styled",
        "scss",
        "vue",
        "json",
        "json5",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "ninja",
        "rst",
        "query",
        "regex",
        "vim",
        "yaml",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "rust",
        "toml",
        "ron",
        "dockerfile",
      })
      opts.highlight = {
        enable = true,
        disable = check_file_size,
      }
      opts.indent = {
        enable = true,
      }
      opts.matchup = {
        enable = true,
      }
    end,
  },
  {
    "andymass/vim-matchup",
    config = function()
      vim.g.matchup_matchparen_offscreen = {}
    end,
  },
}
