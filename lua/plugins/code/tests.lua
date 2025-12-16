-- Install

vim.pack.add({
    -- INFO: Dependency
    { src = "https://github.com/antoinemadec/FixCursorHold.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-neotest/nvim-nio" },

    -- INFO: Core
    { src = "https://github.com/nvim-neotest/neotest" },

    -- INFO: Adapter
    { src = "https://github.com/nsidorenco/neotest-vstest" },
})

-- Setup

local neotest = require("neotest")

neotest.setup({
    adapters = {
        require("neotest-vstest")
    }
})

-- Keymaps

vim.keymap.set('n', "<leader>trn", function() neotest.run.run() end, { desc = "Run the nearest test" })
vim.keymap.set('n', "<leader>tra", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run all tests in current buffer" })
vim.keymap.set('n', "<leader>trd", function() neotest.run.run({strategy = 'dap'}) end, { desc = "Run the nearest test with debug" })
