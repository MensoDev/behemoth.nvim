-- Install

vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
})

-- Setup

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
    automatic_enable = false,
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
