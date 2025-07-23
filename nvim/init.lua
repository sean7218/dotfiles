require("options")
require("mappings")
require("autocmds")
require("config.lsp")
require("config.lazy")

vim.lsp.log.set_level(vim.log.levels.OFF)
-- vim.lsp.log.set_level(vim.log.levels.DEBUG)
vim.cmd.colorscheme "catppuccin"

-- vim.cmd.colorscheme "ayu-dark"

-- ~/.config/nvim/        <- Config files (init.lua)
-- ~/.local/share/nvim/   <- Installed plugins (lazy.nvim, packer, etc)
-- ~/.local/state/nvim/   <- Logs, swap, session
-- ~/.cache/nvim/         <- Cache files
