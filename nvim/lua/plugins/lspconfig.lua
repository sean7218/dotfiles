return {
    'neovim/nvim-lspconfig',
    dependencies = {
        "j-hui/fidget.nvim"
    },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.sourcekit.setup({
            cmd = {
                "env",
                "SOURCEKIT_LOGGING=3",
                "sourcekit-lsp"
            },
            cmd_env = {
                SOURCEKIT_LOGGING = '3'
            },
        })
        lspconfig.rust_analyzer.setup({
            settings = {
                ['rust-analyzer'] = {
                    diagnostics = {
                        enable = false;
                    }
                }
            }
        })
    end
}
