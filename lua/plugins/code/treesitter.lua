return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        config = function()

            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash",
                    "c",
                    "c_sharp",
                    "cpp",
                    "css",
                    "csv",
                    "dart",
                    "html",
                    "http",
                    "hyprlang",
                    "javascript",
                    "json",
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "mermaid",
                    "razor",
                    "regex",
                    "rust",
                    "scss",
                    "sql",
                    "typescript",
                    "vim",
                    "xml",
                    "yaml",
                },

                sync_install = false,

                auto_install = true,

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            })

        end
    }
}
