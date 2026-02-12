return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = { },
        -- Optional dependencies
        -- dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        dependencies = { 
            "nvim-tree/nvim-web-devicons",
            "benomahony/oil-git.nvim",
            "JezerM/oil-lsp-diagnostics.nvim"
        }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
        config = function()
            require("oil").setup({
                columns = {
                    "icon",
                    -- "permissions",
                    "size",
                    -- "mtime",
                },
                view_options = {
                    show_hidden = false,
                    is_always_hidden = function(name, _)
                        return name == "node_modules" or name == "obj" or name == "bin"
                    end,
                },
            })
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end
    },
}
