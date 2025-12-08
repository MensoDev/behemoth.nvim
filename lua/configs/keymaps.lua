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

-- Startup

map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader

-- <leader>m = make, ex: mx is make file as executable
-- <leader>f = find, ex: fb is find on buffer
-- <leader>s = search

-- Normal 'n'

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map('n', 'n', "nzzzv", { desc = "search next and center cursor" })
map('n', 'N', "Nzzzv", { desc = "search previous and center cursor" }) 

map('n', "<leader>mx", "<cmd>!chmod +x %<CR>", { desc = "makes file executable" })

map('n', "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
map('n', "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
map('n', "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
map('n', "<leader>tp", "<cmd>tabp<CR>", { desc = "go to prev tab" })
map('n', "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current tab is new tab" })

map('n', "<leader>bn", "<cmd>bnext<CR>", { desc = "go to next buffer" })
map('n', "<leader>bp", "<cmd>bprev<CR>", { desc = "go to prev buffer" })
map('n', "<leader>bd", "<cmd>bdelete<CR>", { desc = "delete current buffer" })

map('n', "<leader>sv", "<C-w>v", { desc = "split window vertically" })
map('n', "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
map('n', "<leader>se", "<C-w>=", { desc = "make splits equal size" })
map('n', "<leader>sx", "<cmd>close<CR>", { desc = "close current split" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })

-- Visual 'v'

map('v', "<C-c>", "<Esc>", { desc = "exit visual mode to normal mode" })

map('v', 'J', ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

map('v', '<', "<gv", opts)          -- Indent left and keep selection
map('v', '>', ">gv", opts)          -- Indent right and keep selection

map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- Insert 'i'

map('i', "jk", "<Esc>", { desc = "exit insert mode to normal mode" })

-- map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
-- map("i", "<C-e>", "<End>", { desc = "move end of line" })
-- map("i", "<C-h>", "<Left>", { desc = "move left" })
-- map("i", "<C-l>", "<Right>", { desc = "move right" })
-- map("i", "<C-j>", "<Down>", { desc = "move down" })
-- map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Common ('n', 'v', 'i', 'x')

-- map('x', "<leader>p", [["_dP]], { desc = "Paste over selection without overwriting clipboard" })
-- map('v', 'p', '"_dp', opts)         -- Paste over selection without overwriting clipboard

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("behemoth-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- map({ 'n', 'v' }, "<leader>d", [["_d]], { desc = "delete without yanking" })
-- map('n', 'x', '"_x', opts)          -- Prevents deleted characters from copying to clipboard

-- Language Service Protocol 

-- map('n', "<leader>f", vim.lsp.buf.format, { desc = "format code" })
