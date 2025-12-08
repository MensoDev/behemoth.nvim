return {
    {
        "folke/snacks.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            dashboard = { enabled = true },
            explorer = { 
                enabled = true,
                replace_netrw = true, -- Replace netrw with the snacks explorer
                -- trash = true, -- Use the system trash when deleting files
            },
        },
        keys = {    
            -- Top Pickers & Explorer
            { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
            { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
            { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
            { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
        }
    },
}
