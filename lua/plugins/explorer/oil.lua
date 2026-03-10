return {
    {
        'stevearc/oil.nvim',
        opts = { },
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "benomahony/oil-git.nvim",
            "JezerM/oil-lsp-diagnostics.nvim",
        },
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
