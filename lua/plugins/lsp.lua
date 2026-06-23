vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    -- { src = "https://github.com/seblyng/roslyn.nvim" },
})

require("mason").setup({
    registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
    },
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

require("mason-lspconfig").setup({
    automatic_enable = true,
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "cssls",
        "html",
        "tailwindcss",
        "emmet_ls",
        "emmet_language_server",
        -- "roslyn" ISSUE: mason and mason-lspconfig don't suport directly roslyn install
    },
})

-- vim.lsp.enable("lua_ls")

-- vim.lsp.enable("roslyn")
-- require("roslyn").setup({})

vim.lsp.enable("roslyn_ls")
vim.lsp.config("roslyn_ls", {
    filetypes = { "razor", "cs" },
    settings = {
        ['csharp|background_analysis'] = {
            dotnet_analyzer_diagnostics_scope = 'openFiles',
            dotnet_compiler_diagnostics_scope = 'openFiles',
        },
    },
})

vim.diagnostic.config({
    -- Highlight the line number for warnings
    -- Highlight entire line for errors
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = ' ',
            [vim.diagnostic.severity.HINT] = ' ',
            [vim.diagnostic.severity.INFO] = ' ',
        },
        linehl = {
            [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
        },
        numhl = {
            [vim.diagnostic.severity.WARN] = 'WarningMsg',
        },
    },
    -- Use the default configuration
    -- virtual_lines = true

    -- Alternatively, customize specific options
    virtual_lines = {
        -- Only show virtual line diagnostics for the current cursor line
        current_line = true,
    },
})
