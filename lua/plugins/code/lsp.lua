return {
    {
        "mason-org/mason-lspconfig.nvim",
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
            {
                "neovim/nvim-lspconfig",
            },
            {
                "seblyng/roslyn.nvim",
                opts = { },
            },
        },
        opts = {
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
        },
        config = function()

            vim.lsp.enable('lua_ls')
            vim.lsp.enable('html')
            vim.lsp.enable('cssls')
            vim.lsp.enable('rust_analyzer')
            vim.lsp.enable('roslyn')
            vim.lsp.enable('tailwindcss')

            vim.lsp.config("roslyn", {
                on_attach = function()
                    print("Roslyn Attached")
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

            -- Diagnostics
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
                    -- linehl = {
                    --     [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
                    -- },
                    -- numhl = {
                    --     [vim.diagnostic.severity.WARN] = 'WarningMsg',
                    -- },
                },
                -- Use the default configuration
                -- virtual_lines = true

                -- Alternatively, customize specific options
                virtual_lines = {
                    -- Only show virtual line diagnostics for the current cursor line
                    current_line = true,
                },
            })

        end
    }
}

