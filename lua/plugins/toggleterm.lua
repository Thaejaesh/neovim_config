return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  keys = {
    { "<leader>td", "<cmd>ToggleTerm direction=float<CR>", desc="Toggle Terminal"},
    {"<leader><Esc>", "<C-\\><C-n><cmd>ToggleTerm direction=float<CR>", desc="Close Terminal"}
  }
}
