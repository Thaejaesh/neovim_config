return {

  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- 'folke/tokyonight.nvim',
    "everviolet/nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      theme = {
        variant = "spring",
      },
      editor = {
        override_terminal = true,
        transparent_background = false,
        sign = { color = "none" },
        float = {
          color = "mantle",
          invert_border = true,
        },
        completion = {
          color = "surface0",
        },
      },
      overrides = {},
    },
    config = function()
      -- -@diagnostic disable-next-line: missing-fields
      require("evergarden").setup({
        theme = {
          variant = "spring", -- 'winter'|'fall'|'spring'|'summer'
          accent = "yellow",
        },
        editor = {
          transparent_background = false,
          override_terminal = true,
          sign = { color = "none" },
          float = {
            color = "mantle",
            invert_border = true,
          },
          completion = {
            color = "surface0",
          },
        },
        dim_inactive = true,
        style = {
          tabline = { "reverse" },
          types = { "italic" },
          search = { "italic", "reverse" },
          incsearch = { "italic", "reverse" },
          keyword = { "italic" },
          spell = { "underline" },
          comment = {},
        },
        overrides = {},
      })

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      --      vim.cmd.colorscheme 'tokyonight-night'

      vim.cmd.colorscheme("evergarden")
    end,
  },
}
