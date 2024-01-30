vim.cmd("set expandtab") -- Use spaces instead of tabs characters
vim.cmd("set softtabstop=2") -- Amount of white space to insert instead of a tab
vim.cmd("set tabstop=2") -- If you insist on using tabs, use the same tabstop width as space
vim.cmd("set shiftwidth=2") -- White space to use for indent commands in normal mode
vim.cmd("set nu") -- Numbered lines
vim.cmd("set relativenumber") -- Relative numbering
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.colorcolumn = "110"

vim.g.mapleader = " "
