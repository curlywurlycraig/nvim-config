-- appearance
vim.opt.nu = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.expandtab = true
vim.opt.shiftwidth=4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- aux
vim.opt.termguicolors = true

-- backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = ","

