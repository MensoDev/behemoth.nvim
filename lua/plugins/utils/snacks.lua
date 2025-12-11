-- Behemoth | Which Key
--
--

-- Install

vim.pack.add({
    { src = "https://github.com/folke/snacks.nvim" }
})

-- Setup

local Snacks = require("snacks")

Snacks.setup({
    dashboard = {
        enabled = true,
        sections = {
            { section = "header" },
            { section = "keys", gap = 1, padding = 1 },
            -- { section = "startup" }, HACK: this depends of the lazy.nvim package manager :(
        },
    },
    explorer = {
        enabled = true,
        replace_netrw = true, -- Replace netrw with the snacks explorer
        -- trash = true, -- Use the system trash when deleting files
    },
    picker = { enabled = true },
    lazygit = { enabled = true },
    gh = { enabled = true },
})

local keys = {
    -- Top Pickers & Explorer
    { "<leader>e", function() Snacks.explorer() end, desc = "file explorer" },

    { "<leader><space>", function() Snacks.picker.buffers() end, desc = "find buffers" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "find files" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "find files with grep" },
    { "<leader>fs", function() Snacks.picker.smart() end, desc = "find files - smart" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "find config files" },

    -- LSP
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "goto definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "goto declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "show references" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "goto implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "goto t[y]pe definition" },
    { "gai", function() Snacks.picker.lsp_incoming_calls() end, desc = "c[a]lls incoming" },
    { "gao", function() Snacks.picker.lsp_outgoing_calls() end, desc = "c[a]lls outgoing" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP symbols" },
    { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP workspace symbols" },

    -- Github
    { "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "gitHub issues (open)" },
    { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "gitHub issues (all)" },
    { "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "gitHub pull requests (open)" },
    { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "gitHub pull requests (all)" },
    { "<leader>gn", function() Snacks.gh.pr() end, desc = "gitHub pull requests (all)" },

    { "<leader>gl", function() Snacks.lazygit() end, desc = "open lazygit" },

    -- Theme Pickers
    { "<leader>th", function() Snacks.picker.colorschemes() end, desc = "show colorschemes" },
}

for _, map in ipairs(keys) do
    local opts = { desc = map.desc }
    if map.silent ~= nil then
        opts.silent = map.silent
    end
    if map.noremap ~= nil then
        opts.noremap = map.noremap
    else
        opts.noremap = true
    end
    if map.expr ~= nil then
        opts.expr = map.expr
    end

    local mode = map.mode or "n"
    vim.keymap.set(mode, map[1], map[2], opts)
end

