vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>", { silent = true })

require("config.lazy")
