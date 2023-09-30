---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-p>"] = {"<cmd> lua require('fzf-lua').files() <CR>", "[S]earch [A]ll files"},
    -- ["<C-p>"] = {"<cmd> lua require('telescope.builtin').find_files() <CR>", "[S]earch [A]ll files"},
    ["<leader>fa"] = {"<cmd> lua require('telescope.builtin').find_files() <CR>", "[S]earch [A]ll files"},
    ["<leader>ff"] = {"<cmd> lua require('telescope.builtin').git_files() <CR>", "[S]earch [A]ll files"},
    ["<leader>sa"] = {"<cmd> lua require('fzf-lua').files() <CR>", "[S]earch [A]ll files"},
    ["<leader>sf"] = {"<cmd> lua require('fzf-lua').git_files() <CR>", "[S]earch Git [F]iles"},
    ["<leader>sw"] = {"<cmd> lua require('fzf-lua').live_grep() <CR>", "[S]earch [W]ord"},
    ["<leader>sb"] = {"<cmd> lua require('fzf-lua').buffers() <CR>", "[S]earch [B]uffer"},
    ["<leader>sl"] = {"<cmd> lua require('fzf-lua').loclist() <CR>", "[S]earch [L]ocation List"},
    ["<leader>sq"] = {"<cmd> lua require('fzf-lua').quickfix() <CR>", "[S]earch [Q]uickfix List"},
 },
  v = {
    ["J"] = { ": m '>+1<CR>gv=gv", "Move lines down"},
    ["K"] = { ": m '<-1<CR>gv=gv", "Move lines up"},
  }
}

-- more keybinds!

return M
