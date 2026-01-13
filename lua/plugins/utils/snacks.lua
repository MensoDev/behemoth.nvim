return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = false },
            dashboard = { enabled = false },
            explorer = { enabled = false },
            indent = { enabled = true },
            dim = { enabled = false },
            input = { enabled = true },
            picker = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = false },
            scope = { enabled = false },
            scroll = { enabled = false },
            statuscolumn = { enabled = false },
            words = { enabled = false },
        },
        keys = {
            -- Finds
            --
            { "<leader><space>", function() require("snacks").picker.smart() end, desc = "Smart Find Files" },
            { "<leader>fg", function() require("snacks").picker.grep() end, desc = "Find Files: grep mode" },
            { "<leader>ff", function() require("snacks").picker.files() end, desc = "Find Files" },
            { "<leader>fb", function() require("snacks").picker.buffers() end, desc = "Find Buffers" },
            { "<leader>fc", function() require("snacks").picker.cliphist() end, desc = "Find System clipboard" },
            { "<leader>fk", function() require("snacks").picker.keymaps() end, desc = "Goto Implementation" },
            --

            -- Terminal
            --
            { "<leader>ot", function () require("snacks").terminal() end, desc = "Open terminal" },
            --

            -- LSP
            --
            { "<leader>vrr", function() require("snacks").picker.lsp_references() end, nowait = true, desc = "View: Code References" },
            { "<leader>vdf", function() require("snacks").picker.lsp_definitions() end, desc = "Goto Definition" },
            { "<leader>vdc", function() require("snacks").picker.lsp_declarations() end, desc = "Goto Declaration" },
            { "<leader>vip", function() require("snacks").picker.lsp_implementations() end, desc = "Goto Implementation" },
            --

            -- Git and Github
            --
            { "<leader>gs", function() require("snacks").picker.git_status() end, desc = "Git Status" },
            { "<leader>gi", function() require("snacks").picker.gh_issue() end, desc = "GitHub Issues (open)" },
            { "<leader>gI", function() require("snacks").picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
            { "<leader>gp", function() require("snacks").picker.gh_pr() end, desc = "GitHub Pull Requests (open)" },
            { "<leader>gP", function() require("snacks").picker.gh_pr({ state = "all" }) end, desc = "GitHub Pull Requests (all)" },
            { "<leader>gl", function() require("snacks").lazygit.open() end, desc = "Open LazyGit" },
            --
        },
    }
}
