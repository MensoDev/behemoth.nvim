return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdade",
        config = function()
            local treesitter = require("nvim-treesitter.configs")

            treesitter.setup({
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = { enable = true },
                ensure_installed = {
                    "bash",
                    "c",
                    "c_sharp",
                    "cpp",
                    "css",
                    "csv",
                    "dart",
                    "dockerfile",
                    "fish",
                    "git_rebase",
                    "html",
                    "http",
                    "hyprlang",
                    "javascript",
                    "json",
                    "lua",
                    "razor",
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
}
