return {
 "shortcuts/no-neck-pain.nvim",
  opts = {
  },
  config = function ()
    require("no-neck-pain").setup({
      width = 160,
      buffers = {
        scratchPad = {
          enabled = true,
          location = "C:/Projects/Notes/",
        },
        colors = {
          blend = 0.3,
        },
        bo = {
          filetype = "md"
        },
        left = {
          enabled = true,
          -- background = "mantle",
          colors = {
            blend = -0.4,
          }
        },
        right = {
          enabled = true,
          -- background = "mantle",
        },
      },
    })
    vim.keymap.set("n", "<leader>tp", "<cmd>NoNeckPain<cr>")
  end
}
