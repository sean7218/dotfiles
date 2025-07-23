return {
    'neovim/nvim-lspconfig',
    dependencies = {
        -- Automatically install LSPs and related tools to stdpath for Neovim
        -- Mason must be loaded before its dependents so we need to set it up here.
        -- NOTE: `opts = {}` is the same as calling `require('mason').setup({})`
        { 'mason-org/mason.nvim', opts = {} },
        'mason-org/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',


        -- Useful status updates for LSP.
        { 'j-hui/fidget.nvim',    opts = {} },

        -- Allows extra capabilities provided by blink.cmp
        'saghen/blink.cmp',
    },
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require('blink.cmp').get_lsp_capabilities()
        lspconfig.sourcekit.setup({
            cmd = {
                "sourcekit-lsp"
            },
            cmd_env = {
                SOURCEKIT_LOGGING = '3'
            },
            capabilities = capabilities
        })
        lspconfig.rust_analyzer.setup({
            settings = {
                ['rust-analyzer'] = {
                    diagnostics = {
                        enable = false,
                    }
                }
            }
        })
        lspconfig["pyright"].setup({
            capabilities = capabilities
        })
        lspconfig["ts_ls"].setup({
            capabilities = capabilities
        })
    end
}
