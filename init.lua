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

-- Settings
-- 1
require("settings.options")
-- 2
require("settings.keymaps")
-- 3
require("settings.autocmds")
--

-- Plugins | UI
-- 1
require("plugins.ui.icons")
--

-- Plugins | Explorer
--
require("plugins.explorer.oil")
--

-- Plugins | Themes
-- 1
require("plugins.themes.catppuccin")
-- 2
require("plugins.themes.tokyonight")
-- 3
require("plugins.themes")
--

-- Plugins | Code
-- 1
require("plugins.code.treesitter")
-- 2
require("plugins.code.lsp")
-- 3
require("plugins.code.autocomplete")
-- 4
require("plugins.code.gitsigns")
--

-- Plugins | Tools
--
require("plugins.tools.mini")
require("plugins.tools.whichkey")
--

