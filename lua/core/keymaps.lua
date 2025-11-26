-- Startup

map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader

 vim.g.mapleader = " "
 vim.g.maplocalleader = " "

-- Visual Mode

map('v', 'J', ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

map('v', '<', "<gv", opts)          -- Indent left and keep selection
map('v', '>', ">gv", opts)          -- Indent right and keep selection

-- Normal Mode

map('n', "<C-c>", ":nohl<CR>", { desc = "clear search highlights" })
map('n', "<Esc><Esc>", "<cmd>nohlsearch<CR>", { desc = "clear search highlights" })

map('n', 'n', "nzzzv", { desc = "search next and center cursor" })
map('n', 'N', "Nzzzv", { desc = "search previous and center cursor" }) 

map('n', 'Q', "<nop>")

map('n', "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace word cursor is on globally" })
map('n', "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "makes file executable" })

map('n', "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
map('n', "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
map('n', "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
map('n', "<leader>tp", "<cmd>tabp<CR>", { desc = "go to prev tab" })
map('n', "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current tab is new tab" })

-- Insert Mode

map('i', "<C-c", "<Esc>", { desc = "Exit insert mode to normal mode" })

-- Clipboard

map('x', "<leader>p", [["_dP]], { desc = "Paste over selection without overwriting clipboard" })
map('v', 'p', '"_dp', opts)         -- Paste over selection without overwriting clipboard

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("behemoth-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Common

map({ 'n', 'v' }, "<leader>d", [["_d]], { desc = "delete without yanking" })
map('n', 'x', '"_x', opts)          -- Prevents deleted characters from copying to clipboard

-- Language Service Protocol 

map('n', "<leader>f", vim.lsp.buf.format, { desc = "format code" })

