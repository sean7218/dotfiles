require("config.lsp-diagnostic")
require("config.lsp-onattach")

local on_attach = function(client, bufnr)
    print("client is attached", bufnr, client)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

vim.lsp.config["lls"] = {
    name = "lls",
    cmd = {
        "lua-language-server",
        "--loglevel=debug",
        "--logpath=~/.lsplogs/lua_ls",
        "--checklevel=Information",
    },
    filetypes = { 'lua' },
    root_markers = { '.luarc.json', '.luarc.jsonc' },
    root_dir = vim.fn.getcwd(),
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "hs", "vim" }
            },
            workspace = {
                library = {
                    vim.env.VIMRUNTIME,
                    vim.fn.stdpath('config') .. '/lua',
                }
            }
        }
    },
}
vim.lsp.enable('lls')

--[[ TODO: you can simply use vim.lsp.start but it is more adhoc and buffer based
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.lsp.start({
            name = "lua_ls",
            cmd = {
                "lua-language-server",
                "--loglevel=debug",
                "--logpath=~/.lsplogs/lua_ls",
                "--checklevel=Information",
            },
            root_dir = vim.fn.getcwd(),
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT",
                    },
                    diagnostics = {
                        globals = { "hs", "vim" }
                    },
                    workspace = {
                        library = {
                            vim.env.VIMRUNTIME,
                            vim.fn.stdpath('config') .. '/lua',
                        }
                    }
                }
            },
        })
    end,
})
]]

-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "swift",
--     callback = function()
--         vim.lsp.start({
--             name = "sourcekit-lsp",
--             cmd = {
--                 "sourcekit-lsp",
--             },
--             cmd_env = {
--                 SOURCEKIT_LOGGING = 3,
--             },
--             root_dir = vim.fn.getcwd(),
--             on_attach = on_attach,
--             capabilities = capabilities,
--         })
--     end,
-- })
