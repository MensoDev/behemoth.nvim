-- Core
--

-- Força a detecção do filetype para .qml se necessário, e aplica indentação
vim.api.nvim_create_autocmd("FileType", {
  pattern = "qml",
  callback = function()
    -- Configurações de indentação para o buffer atual
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = true
    vim.opt_local.shiftwidth = 4 -- Ajuste conforme sua preferência (ex: 2 ou 4)
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end
})

require("core.global")
require("core.options")
require("core.keymaps")
require("core.autocmds")
