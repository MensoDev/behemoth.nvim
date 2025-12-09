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
            { "<leader>e", function() Snacks.explorer() end, desc = "file explorer" },

            { "<leader><space>", function() Snacks.picker.buffers() end, desc = "find buffers" },
            { "<leader>fg", function() Snacks.picker.grep() end, desc = "find files with grep" },
            { "<leader>fs", function() Snacks.picker.smart() end, desc = "find files - smart" },

            -- Github
            { "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "GitHub Issues (open)" },
            { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
            { "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "GitHub Pull Requests (open)" },
            { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "GitHub Pull Requests (all)" },

            -- Theme Pickers
            { "<leader>th", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
        }
    },
}
