return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    {"<leader>td", "<cmd>ToggleTerm direction=float<CR>", desc="Toggle Terminal"},
    {"<leader>o", "<cmd>ToggleTerm direction=float<CR>", desc="Toggle Terminal"},
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
  config = function ()
    require("toggleterm").setup({
      border = false,
      size = {h = 80, w = 75,},
    })
    vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "term://*",
        callback = function()
          local opts_map = { buffer = 0 }

          -- Map Escape to exit Terminal Mode and enter Normal Mode
          -- Now you can press Esc, then use :q or your toggle bind to close
          vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts_map)

          -- Optional: Map jk or jj to escape if you use those in normal files
          vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts_map)


          vim.keymap.set("n", "q", "<cmd>ToggleTerm<CR>", opts_map)

          -- Ensure the buffer stays alive in the background
          vim.opt_local.bufhidden = "hide"
        end,
      })
  end
}
