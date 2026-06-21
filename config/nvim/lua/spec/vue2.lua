local lspconfig = require("lspconfig")

lspconfig.vuels.setup({
  filetypes = { "vue" },
  init_options = {
    vetur = {
      completion = {
        autoImport = true,
        useScaffoldSnippets = true,
      },
      format = {
        enable = false, --交给prettier格式化
      },
    },
  },
})


