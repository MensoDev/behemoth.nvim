vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

local treesitter = require("nvim-treesitter")

-- ensure these languages parsers are installed
local ensure_installed = {
    "bash",
    "c",
    "c_sharp",
    "cpp",
    "css",
    "csv",
    "dart",
    "dockerfile",
    "gitignore",
    "query",
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
    "tsx",
    "vim",
    "vimdoc",
    "xml",
    "yaml",
}

treesitter.install(ensure_installed)

-- Safe FileType autocmd for highlighting + indentation
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function(args)
        local buf = args.buf
        local ft = vim.bo[buf].filetype
        local lang = vim.treesitter.language.get_lang(ft)

        if not lang then
            return
        end

        -- load parser and start treesitter safely
        pcall(vim.treesitter.language.add, lang)
        pcall(vim.treesitter.start, buf, lang)

        -- enable indentation (skip yaml/markdown)
        if ft ~= "yaml" and ft ~= "markdown" then
            vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            vim.bo[buf].smartindent = false
            vim.bo[buf].cindent = false
        end
    end,
})
