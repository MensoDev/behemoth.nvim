-- Behemoth
--
-- :::::::::  :::::::::: :::    ::: :::::::::: ::::    ::::   :::::::: ::::::::::: :::    :::
-- :+:    :+: :+:        :+:    :+: :+:        +:+:+: :+:+:+ :+:    :+:    :+:     :+:    :+:
-- +:+    +:+ +:+        +:+    +:+ +:+        +:+ +:+:+ +:+ +:+    +:+    +:+     +:+    +:+
-- +#++:++#+  +#++:++#   +#++:++#++ +#++:++#   +#+  +:+  +#+ +#+    +:+    +#+     +#++:++#++
-- +#+    +#+ +#+        +#+    +#+ +#+        +#+       +#+ +#+    +#+    +#+     +#+    +#+
-- #+#    #+# #+#        #+#    #+# #+#        #+#       #+# #+#    #+#    #+#     #+#    #+#
-- #########  ########## ###    ### ########## ###       ###  ########     ###     ###    ###
--
-- ==========================================================================================
--

-- Core
--
require("core.global")
require("core.options")
require("core.autocmds")
require("core.keymaps")
--
--

-- Plugins
--
require("plugins.themes")
require("plugins.ui")
require("plugins.explorer")
require("plugins.mini")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.autocomplete")
require("plugins.copilot")
--
--

-- Themes
--

-- vim.cmd("colorscheme tokyonight")
-- vim.cmd("colorscheme tokyonight-night")
-- vim.cmd("colorscheme tokyonight-storm")
-- vim.cmd("colorscheme tokyonight-day")
-- vim.cmd("colorscheme tokyonight-moon")
-- vim.cmd("colorscheme catppuccin")
-- vim.cmd("colorscheme catppuccin-latte")
-- vim.cmd("colorscheme catppuccin-frappe")
-- vim.cmd("colorscheme catppuccin-macchiato")
vim.cmd("colorscheme catppuccin-mocha")
