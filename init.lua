require('vim._core.ui2').enable({})

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.o.termguicolors = true

vim.opt.cursorlineopt = "both"

vim.o.shell = "pwsh"

vim.o.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait1000-blinkoff1000-blinkon1050-Cursor/lCursor,sm:block-blinkwait175-blinkoff1050-blinkon1075"

vim.api.nvim_set_hl(0, "CursorLine", { bg = "#313B40", italic = true, bold = false })

vim.keymap.set("i", "<C-H>", "<C-W>", { silent = true, desc = "delete from cursor to beginning of next word" })
vim.keymap.set("i", "<C-Del>", "X<Esc>lbcE", { silent = true })

vim.keymap.set("i", "<C-<BS>>", "<C-W>")

-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n><leader>td", {silent = false, desc = "Escape Terminal Mode"})

vim.keymap.set("n", "<leader>m", "<cmd>lua vim.diagnostic.open_float()<cr>", {desc="Diagnostic message"})
