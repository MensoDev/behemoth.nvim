vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
    { src = "https://github.com/folke/tokyonight.nvim", name = "tokyonight"  },
})

require("catppuccin").setup {
    transparent_background = true,
    custom_highlights = function(colors)
        return {
            ColorColumn = { bg = colors.mauve },

            -- For fully transparent
            -- Normal = { bg = "none" },
            NormalFloat = { bg = "none" },
            LineNr = { fg = colors.overlay0 },
            CursorLineNr = { fg = colors.mauve, bg = colors.none },
            CursorLine = { bg = colors.none },

            -- MiniJump2dSpot = { bg = colors.peach, fg = colors.base },
            MiniJump2dSpotUnique = { bg = colors.green, fg = colors.base },
            -- MiniJump2dSpotAhead = { },
            -- MiniJump2dDim = { },

            MiniJump = { bg = colors.mauve, fg = colors.base },
        }
    end
}
