-- Startup
local map = vim.keymap.set

-- Change Modes
map('i', "jk", "<ESC>", { desc = "Exit insert mode" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- File Explorer
map("n", "<leader>e", "<cmd>Ex<CR>", { desc = "Go to file explorer" })
