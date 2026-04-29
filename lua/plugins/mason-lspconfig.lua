return {
  "mason-org/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
    {"mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  automatic_enable = {
    exclude = { "yamlls" }
  }

}
