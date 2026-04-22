vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/seblyng/roslyn.nvim" },
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
        -- "qmlls",
        -- "roslyn" ISSUE: mason and mason-lspconfig don't suport directly roslyn install
    },
})

-- vim.lsp.enable('roslyn_ls')
vim.lsp.enable('roslyn')
vim.lsp.enable('tailwindcss')

vim.lsp.config("roslyn", {
    on_attach = function()
        vim.notify("Roslyn Attached")
    end,
    settings = {
        ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
        },
        ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
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
