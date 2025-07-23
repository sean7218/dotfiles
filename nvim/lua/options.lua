vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Number of spaces a tab counts for
vim.opt.tabstop = 4

-- Number of spaces for each indent level (<< and >>)
vim.opt.shiftwidth = 4

-- Number of spaces inserted with <Tab> in insert mode
vim.opt.softtabstop = 4

-- Auto-indent new lines to match previous line
vim.opt.smartindent = true

-- Round << and >> to nearest shiftwidth
vim.opt.shiftround = true

-- Enable autoindent
vim.opt.autoindent = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false


-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- lines and numbers
vim.opt.cursorline = true        -- Show which line your cursor is on
vim.opt.number = true             -- Enable absolute line numbers
vim.opt.relativenumber = true    -- Enable relative line numbers
vim.opt.cursorline = true        -- Highlight the current line

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.opt.confirm = true


vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldlevel = 99        -- Prevent folds from being closed by default
vim.o.foldlevelstart = 99   -- Start with all folds open
vim.o.foldenable = true     -- Enable folding

