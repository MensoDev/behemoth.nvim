-- Behemoth Core.Options
--
--  ::::::::  ::::::::: ::::::::::: ::::::::::: ::::::::  ::::    :::  ::::::::  
-- :+:    :+: :+:    :+:    :+:         :+:    :+:    :+: :+:+:   :+: :+:    :+: 
-- +:+    +:+ +:+    +:+    +:+         +:+    +:+    +:+ :+:+:+  +:+ +:+        
-- +#+    +:+ +#++:++#+     +#+         +#+    +#+    +:+ +#+ +:+ +#+ +#++:++#++ 
-- +#+    +#+ +#+           +#+         +#+    +#+    +#+ +#+  +#+#+#        +#+ 
-- #+#    #+# #+#           #+#         #+#    #+#    #+# #+#   #+#+# #+#    #+# 
--  ########  ###           ###     ########### ########  ###    ####  ########
--
-- =============================================================================
--

-- File Explorer

vim.cmd("let g:netrw_banner = 0")

-- Editor

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.backspace = {"start", "eol", "indent"}

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "120"

vim.opt.clipboard:append("unnamedplus")
vim.opt.hlsearch = true

vim.opt.mouse = 'a'
vim.g.editorconfig = true

-- disable some default providers
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
