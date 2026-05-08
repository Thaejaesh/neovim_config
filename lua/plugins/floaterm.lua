return{
  "nvzone/floaterm",
  lazy = false,
  dependencies = "nvzone/volt",
  cmd = "FloatermToggle",
  keys = {
    { "<leader>o", "<cmd>FloatermToggle<CR>", desc="Toggle Float Terminal"}
  },
  opts = {},
  config = function ()
    require("floaterm").setup({
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

          -- Ensure the buffer stays alive in the background
          vim.opt_local.bufhidden = "hide"
        end,
      })
  end,
}
