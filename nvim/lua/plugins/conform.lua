return {
    "stevearc/conform.nvim",
    config = function ()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "black" },
                rust = { "rustfmt" },
                javascript = { "prettier" },
                json = { "prettier" },
                swift = { "swift-format" },
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            require("conform").format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 5000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end
}
