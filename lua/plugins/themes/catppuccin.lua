return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = false,
                float = {
                    transparent = false, -- enable transparent floating windows
                    solid = true, -- use solid styling for floating windows, see |winborder|
                },
                custom_highlights = function(colors)
                    return {
                        LineNr = { fg = colors.overlay0 },
                        CursorLineNr = { fg = colors.mauve, bg = colors.none },
                        CursorLine = { bg = colors.none }
                    }
                end,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    notify = true,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    snacks = {
                        enabled = true,
                        indent_scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
                    },
                    mason = true,
                    neotest = true,
                    dap = true,
                    dap_ui = true,
                    which_key = true

                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

            -- load the colorscheme here
            -- colorscheme catppuccin  catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
            -- vim.cmd([[colorscheme catppuccin-mocha]])
            vim.cmd.colorscheme "catppuccin-mocha"
        end,
    }
}
