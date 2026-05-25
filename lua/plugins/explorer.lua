vim.pack.add({
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/malewicz1337/oil-git.nvim" },
    { src = "https://github.com/JezerM/oil-lsp-diagnostics.nvim" },
})

require("oil").setup()
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- opens parent dir over current active window
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- open parent dir in float window
vim.keymap.set("n", "<leader>-", require("oil").toggle_float)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "oil", -- Adjust if Oil uses a specific file type identifier
    callback = function()
        vim.opt_local.cursorline = true
    end,
})
