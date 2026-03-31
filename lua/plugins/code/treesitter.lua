return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter').install { 
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
            }

            vim.api.nvim_create_autocmd('FileType', {
                pattern = { '<filetype>' },
                callback = function() vim.treesitter.start() end,
            })

        end
    }
}
