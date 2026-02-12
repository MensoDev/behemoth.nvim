return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nsidorenco/neotest-vstest"
        },
        config = function ()
            local neotest = require("neotest")

            neotest.setup({
                adapters = {
                    require("neotest-vstest")
                }
            })

            vim.keymap.set('n', "<leader>tr", function() neotest.run.run() end, { desc = "Run the nearest test" })
            vim.keymap.set('n', "<leader>tt", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run all tests in current buffer" })
            vim.keymap.set('n', "<leader>td", function() neotest.run.run({strategy = 'dap'}) end, { desc = "Run the nearest test with debug" })
            vim.keymap.set('n', "<leader>ts", ":Neotest summary<CR>", { desc = "Open the neotest summary" })
            vim.keymap.set('n', "<leader>ta", function() neotest.run.attach() end, { desc = "Attach the test context" })
        end
    }
}
