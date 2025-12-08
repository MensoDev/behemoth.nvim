return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { 
                "bash",
                "c",
                "c_sharp",
                "cpp",
                "css",
                "csv",
                "dart",
                "hyprlang",
                "javascript",
                "json",
                "lua",
                "razor",
                "regex",
                "sql",
                "typescript",
                "vim",
                "vimdoc",
                "xml"
            },

            sync_install = false,
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
