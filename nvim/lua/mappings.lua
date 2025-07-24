

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.get_prev, { desc = "Go to previous [d]iagnostic" })
vim.keymap.set('n', ']d', vim.diagnostic.get_next, { desc = "Go to next [d]iagnostic" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Show diagnostic [e]rror message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostic [q]uickfix list" })

-- quickfix
vim.keymap.set('n', '[q', '<cmd>cprevious<cr>', { desc = "Go to previous [q]uickfix item" })
vim.keymap.set('n', ']q', '<cmd>cnext<cr>', { desc = "Go to next [q]uickfix item" })

-- buffer & tabs
vim.keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = "Go to previous [b]uffer" })
vim.keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = "Go to next [b]uffer" })
vim.keymap.set('n', '[t', '<cmd>tabprevious<cr>', { desc = "Go to previous [t]ab" })
vim.keymap.set('n', ']t', '<cmd>tabnext<cr>', { desc = "Go to next [t]ab" })
vim.keymap.set('n', '<leader>x', '<cmd>bdelete<cr>', { desc = 'buffer delete' })
vim.keymap.set('n', '<leader>y', 'gg"+yG', { noremap = true, silent = true, desc = 'Copy entire file to clipboard' })
vim.keymap.set('n', '<C-s>', '<cmd>w<cr>', { desc = 'buffer [s]ave' })
vim.keymap.set('v', '<C-c>', '"*y', { desc = 'buffer [y]ank on visual' })

-- Gitsigns
vim.keymap.set('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<cr>', { desc = "Gitsigns preview_hunk" })
vim.keymap.set('n', '<leader>hr', '<cmd>Gitsigns reset_hunk<cr>', { desc = "Gitsigns reset_hunk" })
vim.keymap.set('n', '<leader>hs', '<cmd>Gitsigns stage_hunk<cr>', { desc = "Gitsigns stage_hunk" })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Navigation
-- vim.keymap.set('n', '<C-n>', "<cmd>Ex<cr>", { desc = 'Open [E]plore - netrw' })
vim.keymap.set('n', '<C-n>', "<cmd>Oil<cr>", { desc = 'Open [E]plore - netrw' })
vim.keymap.set('n', '<leader>ee','<cmd>lua Snacks.explorer.open()<cr>', { desc = "Snacks [E]xplore" })

-- move lines
vim.keymap.set('v', '<A-K>', ":m '<-2<cr>gv=gv", { desc = "move lines up" })
vim.keymap.set('v', '<A-J>', ":m '>+1<cr>gv=gv", { desc = "move lines down" })

-- format
vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format, { desc = "[f]ormat file" })


-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })




