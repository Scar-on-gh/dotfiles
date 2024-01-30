--vim.cmd("set expandtab")      -- Use spaces instead of tabs characters
--vim.cmd("set softtabstop=2")  -- Amount of white space to insert instead of a tab
--vim.cmd("set tabstop=2")      -- If you insist on using tabs, use the same tabstop width as space
--vim.cmd("set shiftwidth=2")   -- White space to use for indent commands in normal mode
--vim.g.mapleader = " "
-- Setup lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- opts
local opts = {}
-- end opts

-- commenting these out until the files are added
require("vim-options")
require("lazy").setup("plugins")
--require("solarized-osaka").setup()
--vim.cmd[[colorscheme solarized-osaka]]

-- Other options from old ~/.vimrc
--set nowrap         " Don't wrap long lines
--set autoindent     " Do auto-indenting
--set nocindent      " But don't do wacky C style indenting
--set bs=2           " allow backspacing over everything in insert mode
--set showmatch      " always set showmatch on
--set expandtab      " Use spaces instead of tabs
--set softtabstop=2  " Use spaces instead of tabs
--set shiftwidth=2
--set tabstop=2      " If you insist on using tabs, use the same tabstop
--set backup       " keep a backup file (defaults to .filename~)
--set backupdir=~/vim_backups/
--set viminfo='20,\"50  " read/write a .viminfo file, don't store more than 50 lines of registers
--set history=50     " keep 50 lines of command line history
--set ruler          " show the cursor position all the time
