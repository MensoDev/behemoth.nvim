vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' }
})

-- require("mini.icons").setup()
require("mini.pairs").setup()
require('mini.statusline').setup()
require('mini.trailspace').setup()
require('mini.tabline').setup()
require('mini.notify').setup()
require('mini.indentscope').setup()
require('mini.fuzzy').setup()
require('mini.pick').setup()
require('mini.surround').setup()

vim.keymap.set('n', "<leader>ff", "<cmd>Pick files<CR>", { desc = "Find: files" })
vim.keymap.set('n', "<leader>fb", "<cmd>Pick buffers<CR>", { desc = "Find: buffers" })

vim.keymap.set('n', "<leader>cl", "<cmd>lua MiniTrailspace.trim()<CR>", { desc = "Trim: whitespace" })
