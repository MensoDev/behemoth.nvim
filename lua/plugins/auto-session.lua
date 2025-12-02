return {
    "rmagatti/auto-session",
    config = function()
        local session = require("auto-session")

        session.setup({
            auto_restore_enabled = false,
            auto_session_supress_dirs = { "~/", "~/.dev" }
        })

        vim.keymap.set('n', "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "restore session for cwd" })
        vim.keymap.set('n', "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "save session for auto session"})
    end
}
