
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Netrw
-- vim.keymap.set('n', '<C-n>', "<cmd>Ex<cr>", { desc = 'Open [E]plore - netrw' })
vim.keymap.set('n', '<C-n>', "<cmd>Oil<cr>", { desc = 'Open [E]plore - netrw' })

vim.keymap.set('n', '<leader>x', '<cmd>bdelete<cr>', { desc = 'buffer delete' })
vim.keymap.set('n', '<C-s>', '<cmd>w<cr>', { desc = 'save' })

vim.keymap.set('n', '<leader>ee','<cmd>lua Snacks.explorer.open()<cr>', { desc = "Snacks [E]xplore" })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


