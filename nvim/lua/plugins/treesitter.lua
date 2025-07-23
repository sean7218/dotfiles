return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require'nvim-treesitter.configs'.setup {
             ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "rust", "json", "yaml", "javascript", "swift" },
             -- Install parsers synchronously (only applied to `ensure_installed`)
             sync_install = false,

             -- Automatically install missing parsers when entering buffer
             -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
             auto_install = true,

             -- List of parsers to ignore installing (or "all")
             ignore_install = {},

             highlight = {
                 enable = true,
                 disable = function(lang, buf)
                     -- setup if file is too large
                     return false
                 end,
             },
        }
    end
}
