vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/akinsho/bufferline.nvim" },
    { src = "https://github.com/folke/todo-comments.nvim" },
    { src = "https://github.com/catgoose/nvim-colorizer.lua" },
    { src = 'https://github.com/folke/which-key.nvim' },
})

require("lualine").setup()
require("todo-comments").setup()

require("colorizer").setup({
    options = {
        display = {
            mode = "virtualtext", -- string or list: "background"|"foreground"|"underline"|"virtualtext"
            virtualtext = {
                char = "", -- character used for virtualtext
                position = "before", -- "eol"|"before"|"after"
                hl_mode = "foreground", -- "background"|"foreground"
            },
        },
    },
})


require('bufferline').setup({
    highlights = require("catppuccin.special.bufferline").get_theme()
})

vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferLineSeparator", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { bg = "none" })
