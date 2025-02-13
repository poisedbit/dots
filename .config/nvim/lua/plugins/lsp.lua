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
                "rust_analyzer",
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
                                telemetry = { enable = false },
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
                virtual_text = false,
                virtual_lines = {
                    only_current_line = true,
                },
                update_in_insert = true,
            }

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
        end,
    },
    {
        "folke/trouble.nvim",
        lazy = true,
        event = "VeryLazy",
        cmd = "Trouble",
        config = true,
        keys = {
            {
                "<leader>t",
                "<cmd>Trouble diagnostics focus<cr>",
                desc = "diagnostics (trouble)",
            },
        },
    },
    {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        lazy = true,
        event = "VeryLazy",
        config = true,
    },
    {
        "j-hui/fidget.nvim",
        event = "LspAttach",
        config = true,
    },
}
