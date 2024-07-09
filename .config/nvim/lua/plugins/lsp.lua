return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
        },
        event = {
            "BufNewFile",
            "BufReadPre",
            "BufWritePre",
        },
        config = function()
            local servers = {
                "bashls",
                "clangd",
                "cssls",
                "html",
                "jsonls",
                "tsserver",
                "lua_ls",
                --"rust_analyzer",
                -- "svelte",
                "taplo",
                "yamlls",
            }
            local capabilities = vim.tbl_deep_extend(
                "force",
                {},
                vim.lsp.protocol.make_client_capabilities(),
                require("cmp_nvim_lsp").default_capabilities()
            )

            local lspconfig = require "lspconfig"

            local handlers = {
                function(server)
                    lspconfig[server].setup {
                        capabilities = capabilities,
                    }
                end,
                ["lua_ls"] = function()
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                workspace = { checkThirdParty = false },
                                diagnostics = { globals = { "vim" } },
                            },
                        },
                    }
                end,
            }

            for _, lsp in ipairs(servers) do
                if handlers[lsp] then
                    handlers[lsp]()
                else
                    handlers[1](lsp)
                end
            end

            vim.diagnostic.config {
                update_in_insert = true,
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            }

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
        end,
    },
    {
        "j-hui/fidget.nvim",
        event = "LspAttach",
        config = true,
    },
    {
        "mrcjkb/rustaceanvim",
        version = "^4",
        lazy = false, -- This plugin is already lazy
    },
}
