return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            -- bigfile = { enabled = true },
            dashboard = {
                enabled = true,
                preset = {
                    header =[[
███╗   ███╗███████╗███╗   ██╗███████╗ ██████╗ 
████╗ ████║██╔════╝████╗  ██║██╔════╝██╔═══██╗
██╔████╔██║█████╗  ██╔██╗ ██║███████╗██║   ██║
██║╚██╔╝██║██╔══╝  ██║╚██╗██║╚════██║██║   ██║
██║ ╚═╝ ██║███████╗██║ ╚████║███████║╚██████╔╝
╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝╚══════╝ ╚═════╝ ]],
                    sections = {
                        { section = "header" },
                        { section = "keys", gap = 1, padding = 1 },
                        { section = "startup" },
                    },
                },
            },
        },
        keys = {
            -- lazygit and git
            { "<leader>lg", function() require("snacks").lazygit() end, desc = "open lazygit" },
            { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "open lazygit logs" },
            { "<leader>gbr", function() require("snacks").picker.git_branches({ layout = "select" }) end, desc = "pick and switch git branches" },

            -- File: explorer and picker
            -- { "<leader>es", function() require("snacks").explorer() end, desc = "open snacks explorer" },

            { "<leader>pf", function() require("snacks").picker.files() end, desc = "find files (snacks picker)" },
            { "<leader>pc", function() require("snacks").picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "find config files" },
            { "<leader>ps", function() require("snacks").picker.grep() end, desc = "search files - grep word (snacks picker)" },
            { "<leader>pws", function() require("snacks").picker.grep_word() end, desc = "search visual selection or word (snacks picker)", mode = { 'n', 'x'} },
            { "<leader>pk", function() require("snacks").picker.keymaps({ layout = "ivy"}) end, desc = "search keymaps (snacks picker)" },


            { "<leader>th", function() require("snacks").picker.colorschemes({ layout = "ivy"}) end, desc = "pick color schemes" },
            { "<leader>vh", function() require("snacks").picker.help() end, desc = "help snacks page" },

            { "<leader>rN", function() require("snacks").rename.rename_file() end, desc = "fast rename current file" },
            { "<leader>dB", function() require("snacks").bufdelete() end, desc = "delete or close buffer" },
            
        }
    },
    {
        "folke/todo-comments.nvim",
        event = { "BufReadPre", "BufNewFile" },
        keys = {
            { "<leader>pt", function() require("snacks").picker.todo_comments() end, desc = "TODO" },
            { "<leader>pT", function() require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } }) end, desc = "TODO/FIX/FIXME" }
        }
    }
}
