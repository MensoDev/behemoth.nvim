vim.pack.add({
    { src = "https://github.com/folke/snacks.nvim", },
})

local snacks = require("snacks")

snacks.setup({
    animate = { enabled = false },
    bigfile = { enabled = false },
    dashboard = { enabled = false },
    dim = { enabled = false },
    explorer = { enabled = false, replace_netrw = false },
    image = { enabled = false },
    indent = { enabled = false },
    input = { enabled = false },
    layout = { enabled = false },
    notifier = { enabled = false },
    quickfile = { enabled = false },
    scope = { enabled = false },
    scratch = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    terminal = { enabled = false },
    toggle = { enabled = false },
    words = { enabled = false },
    zen = { enabled = false },
    picker = { enabled = true },
})

local keymaps = {

    -- Top Pickers & Explorer
    { "<leader><space>", function() snacks.picker.smart() end, desc = "Snacks: Smart Find Files" },
    { "<leader>/", function() snacks.picker.grep() end, desc = "Grep" },
    {
      "<leader>,", function()
        snacks.picker.buffers({
          win = {
            input = {
              keys = {
                ["dd"] = "bufdelete",
                ["<c-d>"] = { "bufdelete", mode = { "n", "i" } },
              },
            },
            list = { keys = { ["dd"] = "bufdelete" } },
          },
        })
      end, desc = "Snacks: Buffers",
    },
    -- find
    { "<leader>ff", function() snacks.picker.files() end, desc = "Snacks: Find Files" },
    { "<leader>fg", function() snacks.picker.git_files() end, desc = "Snacks: Find Git Files" },
    { "<leader>fc", function() snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Snacks: Find Config File" },
    { "<leader>fp", function() snacks.picker.projects() end, desc = "Snacks: Projects" },
    { "<leader>fr", function() snacks.picker.recent() end, desc = "Snacks: Recent" },
    -- git
    -- { "<leader>gb", function() snacks.picker.git_branches() end, desc = "Git Branches" },
    -- { "<leader>gl", function() snacks.picker.git_log() end, desc = "Git Log" },
    -- { "<leader>gs", function() snacks.picker.git_status() end, desc = "Git Status" },
    -- { "<leader>gS", function() snacks.picker.git_stash() end, desc = "Git Stash" },
    -- { "<leader>gp", function() snacks.picker.git_diff() end, desc = "Git Diff Picker (Hunks)" },
    -- { "<leader>gP", function() snacks.picker.git_diff({ base = "origin" }) end, desc = "Git Diff Picker(origin)" },
    -- { "<leader>gf", function() snacks.picker.git_log_file() end, desc = "Git Log File" },
    -- { "<leader>gB", function() snacks.gitbrowse() end, desc = "Git Browse", mode = { "n", "v" } },
    -- { "<leader>gg", function() snacks.lazygit() end, desc = "Lazygit" },
    -- Grep
    -- { "<leader>sB", function() snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
    -- { "<leader>sg", function() snacks.picker.grep() end, desc = "Grep" },
    -- { "<leader>sw", function() snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
    -- search
    -- { '<leader>s"', function() snacks.picker.registers() end, desc = "Registers" },
    -- { "<leader>sb", function() snacks.picker.lines() end, desc = "Buffer Lines" },
    -- { "<leader>sd", function() snacks.picker.diagnostics() end, desc = "Diagnostics" },
    -- { "<leader>sD", function() snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
    -- { "<leader>si", function() snacks.picker.icons() end, desc = "Icons" },
    -- { "<leader>sk", function() snacks.picker.keymaps() end, desc = "Keymaps" },
    -- { "<leader>sm", function() snacks.picker.marks() end, desc = "Marks" },
    -- { "<leader>su", function() snacks.picker.undo() end, desc = "Undo History" },
    -- LSP
    -- { "gd", function() snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    -- { "gD", function() snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    -- { "gr", function() snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    -- { "gI", function() snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    -- { "gy", function() snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },

}

-- stylua: ignore end
for _, map in ipairs(keymaps) do
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
