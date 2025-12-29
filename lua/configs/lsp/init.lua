-- lsp
--------------------------------------------------------------------------------
-- See https://gpanders.com/blog/whats-new-in-neovim-0-11/ for a nice overview
-- of how the lsp setup works in neovim 0.11+.

-- This actually just enables the lsp servers.
-- The configuration is found in the lsp folder inside the nvim config folder,
-- so in ~.config/lsp/lua_ls.lua for lua_ls, for example.
--

vim.lsp.enable('lua_ls')
vim.lsp.enable('html')
vim.lsp.enable('cssls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('roslyn')

vim.lsp.config("roslyn", {
    on_attach = function()
        print("Roslyn: attach on file")
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


vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)

        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then

            -- vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup', }
            -- vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })

            -- INFO: GOTO
            vim.keymap.set('n', "<leader>gd", function() vim.lsp.buf.definition() end, { desc = "Go to definition" })

            -- INFO: ACTION

            vim.keymap.set('n', "<leader>vca", function() vim.lsp.buf.code_action() end, { desc = "View: Code action" })
            vim.keymap.set('n', "<leader>vrr", function() vim.lsp.buf.references() end, { desc = "View: References" })
            vim.keymap.set('n', "<leader>vrn", function() vim.lsp.buf.rename() end, { desc = "Rename symbol" })
            vim.keymap.set('n', "<leader>vcl", function() vim.lsp.codelens.refresh() end, { desc = "View: Refresh codelens" })

            -- INFO: UTILS
            vim.keymap.set('i', '<C-Space>', function() vim.lsp.completion.get() end)

        end
    end,
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
