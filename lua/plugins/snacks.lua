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
            lazygit = { enabled = true },
        },
        keys = {    
            -- Top Pickers & Explorer
            { "<leader>e", function() Snacks.explorer() end, desc = "file explorer" },

            { "<leader><space>", function() Snacks.picker.buffers() end, desc = "find buffers" },
            { "<leader>ff", function() Snacks.picker.files() end, desc = "find files" },
            { "<leader>fg", function() Snacks.picker.grep() end, desc = "find files with grep" },
            { "<leader>fs", function() Snacks.picker.smart() end, desc = "find files - smart" },
            { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "find config files" },
            
            -- Github
            { "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "gitHub issues (open)" },
            { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "gitHub issues (all)" },
            { "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "gitHub pull requests (open)" },
            { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "gitHub pull requests (all)" },
            { "<leader>gl", function() Snacks.lazygit() end, desc = "open lazygit" },
           
            -- Theme Pickers
            { "<leader>th", function() Snacks.picker.colorschemes() end, desc = "show colorschemes" },
        }
    },
}
