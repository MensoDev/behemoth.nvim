return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        },
        config = function ()
            local dap = require("dap")
            local mason_path = vim.fn.stdpath("data") .. "/mason/packages/netcoredbg/netcoredbg"

            local netcoredbg_adapter = {
                type = "executable",
                command = mason_path,
                args = { "--interpreter=vscode" },
            }

            dap.adapters.netcoredbg = netcoredbg_adapter -- needed for normal debugging
            dap.adapters.coreclr = netcoredbg_adapter    -- needed for unit test debugging

            dap.configurations.cs = {
                {
                    type = "coreclr",
                    name = "launch - netcoredbg",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
                    end,
                },
                -- 🔗 ATTACH EM PROCESSO EXISTENTE
                {
                    type = "coreclr",
                    name = "attach - netcoredbg",
                    request = "attach",

                    -- picker interativo de processos
                    processId = require("dap.utils").pick_process,

                    -- diretório de trabalho (importante para symbols)
                    cwd = vim.fn.getcwd(),
                },
            }

            local dapui = require("dapui")

            --- open ui immediately when debugging starts
            dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
            dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
            dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

            -- default configuration
            dapui.setup()

            vim.keymap.set("n", "<leader>dc", "<Cmd>lua require'dap'.continue()<CR>", { noremap = true, silent = true, desc = "Debug: continue" })
            vim.keymap.set("n", "<leader>db", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true, desc = "Debug: toggle breakpoint" })
            vim.keymap.set("n", "<leader>do", "<Cmd>lua require'dap'.step_over()<CR>", { noremap = true, silent = true, desc = "Debug: step over" })
            vim.keymap.set("n", "<leader>di", "<Cmd>lua require'dap'.step_into()<CR>", { noremap = true, silent = true, desc = "Debug: step into" })
            vim.keymap.set("n", "<leader>dO", "<Cmd>lua require'dap'.step_out()<CR>", { noremap = true, silent = true, desc = "Debug: step out" })
            vim.keymap.set("n", "<leader>dr", "<Cmd>lua require'dap'.repl.open()<CR>", { noremap = true, silent = true, desc = "Debug: repl open" })
            vim.keymap.set("n", "<leader>dl", "<Cmd>lua require'dap'.run_last()<CR>", { noremap = true, silent = true, desc = "Debug: run last" })
        end
    }
}
