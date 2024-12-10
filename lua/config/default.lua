vim.g.mapleader = " "

vim.opt.encoding = "utf-8"

vim.opt.compatible = false
vim.opt.hlsearch = true
vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.laststatus = 2
vim.opt.vb = true
vim.opt.ruler = true
vim.opt.spell = false
vim.opt.spelllang = "en_us"
vim.opt.autoindent = true
vim.opt.colorcolumn = "120"
vim.opt.textwidth = 120
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamed"
vim.opt.scrollbind = true
vim.opt.wildmenu = true

vim.opt.tabstop = 3
vim.opt.shiftwidth = 3

-- filetype related
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit" },
  callback = function(ev)
    vim.api.nvim_set_option_value("textwidth", 72, { scope = "local" })
  end,
})

vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":Neotree reveal<CR>", { noremap = true, silent = true })
