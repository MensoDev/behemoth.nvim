return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            autotag = { enable = true },
            auto_install = false,
            ensure_installed = {
                "angular",
                "bash",
                "c",
                "c_sharp",
                "cpp",
                "css",
                "csv",
                "dart",
                "dockerfile",
                "html",
                "http",
                "hyprlang",
                "javascript",
                "json",
                "lua",
                "luadoc",
                "razor",
                "regex",
                "rust",
                "scss",
                "sql",
                "typescript",
                "vim",
                "xml",
                "yaml",
            }
        })
    end
}
