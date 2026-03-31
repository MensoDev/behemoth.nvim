return {
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()

            require("tokyonight").setup({
                style = "storm", -- storm | night | moon | day
                transparent = true, -- 🔑 ativa transparência
                terminal_colors = true,
                styles = {
                    sidebars = "transparent", -- nvim-tree, telescope, etc
                    floats = "transparent",   -- janelas flutuantes
                },
            })

            -- load the colorscheme here
            -- vim.cmd([[colorscheme tokyonight]])
        end,
    },
}
