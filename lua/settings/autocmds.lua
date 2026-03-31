-- Behemoth | Autocmds
--

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('behemoth-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
--
