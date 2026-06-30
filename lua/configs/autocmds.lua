-- Behemoth | Core.Autocmds
--

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function() vim.hl.on_yank() end,
})
--

-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(args)
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     if client and client:supports_method("textDocument/completion") then
--       vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
--     end
--   end,
-- })
