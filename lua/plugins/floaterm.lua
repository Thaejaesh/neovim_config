return{
  "nvzone/floaterm",
  dependencies = "nvzone/volt",
  opts = {},
  cmd = "FloatermToggle",
  keys = {
    { "<leader>o", "<cmd>FloatermToggle<CR>", desc="Toggle Float Terminal"}
  },
  config = function ()
    -- Optional: Nice Defaults
    vim.g.floaterm_width = 0.9
    vim.g.floaterm_height = 0.8
    vim.g.floaterm_position = "center"

    -- Keep terminal alive after commands exit
    vim.g.floaterm_autoclose = 0

    -- Hide instead of destroy when toggled
    vim.g.floaterm_autohide = 1

    -- Optional: make PowerShell behave better interactively
    vim.g.floaterm_shellcmdFlag = "-NoLogo"


  end,
}
