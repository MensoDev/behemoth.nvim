vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' }
})

-- require("mini.icons").setup()
require("mini.pairs").setup()
require('mini.statusline').setup()
require('mini.trailspace').setup()
require('mini.tabline').setup()
require('mini.notify').setup()
require('mini.indentscope').setup()
require('mini.fuzzy').setup()
require('mini.surround').setup()
require('mini.pick').setup()
require('mini.extra').setup()

vim.ui.select = require('mini.pick').ui_select

vim.keymap.set('n', "<leader>ff", "<cmd>Pick files<CR>", { desc = "Find: files" })
vim.keymap.set('n', "<leader>fg", "<cmd>Pick grep_live<CR>", { desc = "Find: files grep" })
vim.keymap.set('n', "<leader>fb", "<cmd>Pick buffers<CR>", { desc = "Find: buffers" })
vim.keymap.set('n', '<leader>fs', "<cmd>Pick lsp scope='document_symbol'<CR>", { desc = "Find: Document symbols" })
vim.keymap.set('n', '<leader>fS', "<cmd>Pick lsp scope='workspace_symbol'<CR>", { desc = "Find: Workspace symbols" })

vim.keymap.set("n", "<leader>fc", function()
  require("mini.pick").builtin.files(nil, { source = { cwd = vim.fn.stdpath("config") } })
end, { desc = "Find: config files" })

-- 4. Melhorado: Limpa espaços em branco E linhas vazias no final do arquivo
vim.keymap.set('n', "<leader>cl", function()
  require('mini.trailspace').trim()
  require('mini.trailspace').trim_last_lines()
end, { desc = "Trim: whitespace & empty lines" })

-- Keymaps de navegação do LSP usando o mini.pick
vim.keymap.set('n', 'grd', "<cmd>Pick lsp scope='definition'<CR>", { desc = "LSP Code: Go to definition" })
vim.keymap.set('n', 'grD', "<cmd>Pick lsp scope='declaration'<CR>", { desc = "LSP Code: Go to definition" })
vim.keymap.set('n', 'grr', "<cmd>Pick lsp scope='references'<CR>", { desc = "LSP Code: Find references" })

