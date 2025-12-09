return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { 
            "mason-org/mason.nvim",
            opts = {
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
            }
        },
        "neovim/nvim-lspconfig",
    },
    config = function()
       local mason_lspconfig = require("mason-lspconfig") 

       mason_lspconfig.setup({
           ensure_installed = {
               "ts_ls",
               "cssls",
               "tailwindcss",
               "emmet_ls",
               "emmet_language_server",
               "rust_analyzer" 
           }
       })
       
    end
}
