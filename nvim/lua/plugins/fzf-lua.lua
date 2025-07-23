return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local fzflua = require("fzf-lua")
        fzflua.setup {
            'telescope',
        }
        vim.keymap.set("n", "<leader>sf", fzflua.files, { silent = true, desc = "[F]zf [F]iles" })
        vim.keymap.set("n", "<leader>sg", fzflua.live_grep_glob, { silent = true, desc = "[F]zf [G]rep" })
        vim.keymap.set("n", "<leader>sj", fzflua.jumps, { silent = true, desc = "[F]zf [J]umps" })
        vim.keymap.set("n", "<leader>sm", fzflua.marks, { silent = true, desc = "[F]zf [M]arks" })
        vim.keymap.set("n", "<leader>sc", fzflua.quickfix, { silent = true, desc = "[F]zf [Q]uickfix" })
        vim.keymap.set("n", "<leader><leader>", fzflua.buffers, { silent = true, desc = "[F]zf [B]uffers" })
    end
}
