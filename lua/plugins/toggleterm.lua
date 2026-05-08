return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    {"<leader>td", "<cmd>ToggleTerm direction=float<CR>", desc="Toggle Terminal"},
    {"<leader><Esc>", "<C-\\><C-n><cmd>ToggleTerm direction=float<CR>", desc="Close Terminal"}
  },
  opts = {
    persist_size = true,
    persist_mode = true,

    start_in_insert = true,

    direction = "float",
    float_opts = {
      board = "rounded",
      width = function ()
        return math.floor(vim.o.columns * 0.9)
      end,
      height = function ()
        return math.floor(vim.o.lines * 0.8)
      end,
    },

    close_on_exit = false,

  },
}
