-- Behemoth | STARTUP | SETTINGS
--

-- General
--
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
--

-- Relative and absolute line numbers combined
--
vim.opt.number = true
vim.opt.relativenumber = true
--

-- Keep signcolumn on by default
--
vim.opt.signcolumn = 'yes'
--

-- Cursorline
--
vim.opt.cursorline = true
--

-- Show whitespace characters
--
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
--

-- Search
--
vim.opt.ignorecase = true
vim.opt.smartcase = true
--

-- Preview substitutions
--
vim.opt.inccommand = 'split'
--

-- Text wrapping
--
vim.opt.wrap = true
vim.opt.breakindent = true
--

-- Tabstops
--
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
--

-- Indent
--
vim.opt.autoindent = true
vim.opt.smartindent = true
--

-- Window splitting
--
vim.opt.splitright = true
vim.opt.splitbelow = true
--

-- Save undo history
--
vim.opt.undofile = true
--

-- Set the default border for all floating windows
--
vim.opt.winborder = 'rounded'
--

-- Theme and UI
--
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.scrolloff = 8
--

-- Files
--
vim.opt.swapfile = false
--

