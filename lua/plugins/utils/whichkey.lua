-- Behemoth | Which Key
--
--

-- Install

vim.pack.add({ { src = "https://github.com/folke/which-key.nvim" } })

-- Setup

require("which-key").setup({
    keys = { "<leader>", "<c-w>", '"', "'", "`", "c", "v", "g" }
})
