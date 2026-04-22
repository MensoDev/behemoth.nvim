vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "razor",
  callback = function()
    vim.treesitter.start()
  end,
})

vim.pack.add({
    { src = 'https://github.com/romus204/tree-sitter-manager.nvim' },
})

require('tree-sitter-manager').setup({
    -- Default Options
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
        "qmljs",
    }, -- list of parsers to install at the start of a neovim session
    -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
    auto_install = true, -- if enabled, install missing parsers when editing a new file
    highlight = true, -- treesitter highlighting is enabled by default
    -- languages = {}, -- override or add new parser sources
    -- parser_dir = vim.fn.stdpath("data") .. "/site/parser",
    -- query_dir = vim.fn.stdpath("data") .. "/site/queries",
})

