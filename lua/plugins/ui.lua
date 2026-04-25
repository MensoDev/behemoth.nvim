vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/akinsho/bufferline.nvim" },
    { src = "https://github.com/folke/todo-comments.nvim" },
    { src = "https://github.com/catgoose/nvim-colorizer.lua" },
    { src = 'https://github.com/folke/which-key.nvim' },
})

require("lualine").setup()
require("bufferline").setup()
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

