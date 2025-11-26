-- Global Options

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Editor Options

vim.opt.number = true                   -- Show absolute line numbers
vim.opt.relativenumber = true           -- Show relative line numbers

vim.opt.expandtab = true                -- Convert tabs to spaces
vim.opt.tabstop = 4                     -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4                  -- Indentation width 
vim.opt.softtabstop = 4                 -- Editing <Tab> feels like 4 spaces 
vim.opt.smartindent = true              -- Smart autoindenting

vim.opt.clipboard = "unnamedplus"       -- Use system clipboard

vim.opt.cursorline = true               -- Highlight current line
vim.opt.cursorlineopt = "number"        -- ?
vim.opt.mouse = 'a'                     -- Enable mouse suport
vim.opt.showmode = false                -- Hide mode indicator (use statusline plugin)

vim.opt.encoding = "utf-8"              -- Default encoding
vim.opt.fileencoding = "utf-8"          -- File encoding

vim.opt.ignorecase = true               -- ?
vim.opt.smartcase = true                -- ?

vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.timeoutlen = 400
vim.opt.undofile = true

vim.opt.updatetime = 250                -- interval for writing swap file to disk, also used by gitsigns
