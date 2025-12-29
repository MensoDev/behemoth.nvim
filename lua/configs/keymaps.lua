-- Behemoth Configs.Keymaps
--
-- :::    ::: :::::::::: :::   ::: ::::    ::::      :::     :::::::::   ::::::::  
-- :+:   :+:  :+:        :+:   :+: +:+:+: :+:+:+   :+: :+:   :+:    :+: :+:    :+: 
-- +:+  +:+   +:+         +:+ +:+  +:+ +:+:+ +:+  +:+   +:+  +:+    +:+ +:+        
-- +#++:++    +#++:++#     +#++:   +#+  +:+  +#+ +#++:++#++: +#++:++#+  +#++:++#++ 
-- +#+  +#+   +#+           +#+    +#+       +#+ +#+     +#+ +#+               +#+ 
-- #+#   #+#  #+#           #+#    #+#       #+# #+#     #+# #+#        #+#    #+# 
-- ###    ### ##########    ###    ###       ### ###     ### ###         ########
--
-- ===============================================================================
--

local opts = { noremap = true, silent = true }

-- Easier interaction with the system clipboard
vim.keymap.set({ 'n', 'x' }, '<leader>y', '"+y', { desc = 'Copy to system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard after the cursor position' })
vim.keymap.set({ 'n', 'x' }, '<leader>P', '"+P', { desc = 'Paste from system clipboard before the cursor position' })

-- Others

vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "General clear highlights" })
vim.keymap.set("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true })
vim.keymap.set("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })
vim.keymap.set('i', "jk", "<Esc>", { desc = "Exit insert mode to normal mode" })

-- Indent left or right selection
vim.keymap.set('v', '<', "<gv", opts)
vim.keymap.set('v', '>', ">gv", opts)

-- Move selected lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = "Moves lines down in visual selection" })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = "Moves lines up in visual selection" })

-- Easier interaction with windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

-- Easier interaction with split windows
vim.keymap.set('n', "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set('n', "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set('n', "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set('n', "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Easier interaction with buffers
vim.keymap.set('n', '<leader>bb', '<C-^>', { desc = 'Switch to alternate buffer' })
vim.keymap.set('n', '<leader>bn', ':bnext<cr>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', ':bprevious<cr>', { desc = 'Previous buffer' })
vim.keymap.set('n', "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })

-- Toggle visible whitespace characters
vim.keymap.set('n', '<leader>l', ':listchars!<cr>', { desc = 'Toggle [l]istchars' })

-- Quickly source current file / execute Lua code
vim.keymap.set('n', '<leader>xx', '<Cmd>source %<CR>', { desc = 'Source current file' })
vim.keymap.set('n', '<leader>x', '<Cmd>:.lua<CR>', { desc = 'Lua: execute current line' })
vim.keymap.set('v', '<leader>x', '<Cmd>:lua<CR>', { desc = 'Lua: execute current selection' })
