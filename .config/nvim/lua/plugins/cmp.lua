return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "davidsierradz/cmp-conventionalcommits",
            { "David-Kunz/cmp-npm", config = true },
            { "Saecki/crates.nvim", config = true },
            "onsails/lspkind.nvim",
        },
        event = "InsertEnter",
        config = function()
            vim.api.nvim_set_hl(
                0,
                "CmpGhostText",
                { link = "Comment", default = true }
            )

            local cmp = require "cmp"
            local defaults = require "cmp.config.default"()

            cmp.setup {
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                sources = cmp.config.sources {

                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" },
                    -- { name = "cmdline" },
                    { name = "nvim_lua" },
                    { name = "npm" },
                    { name = "crates" },
                    { name = "conventionalcommits" },
                    { name = "nvim_lsp_signature_help" },
                },
                formatting = {
                    format = require("lspkind").cmp_format {
                        mode = "symbol",
                        maxwidth = 60,
                        ellipsis_char = "...",
                    },
                },
                sorting = defaults.sorting,
                mapping = cmp.mapping.preset.insert {
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-,>"] = cmp.mapping.select_prev_item(),
                    ["<C-.>"] = cmp.mapping.select_next_item(),
                    ["<CR>"] = cmp.mapping.confirm {
                        behavior = cmp.ConfirmBehavior.Insert,
                        select = true,
                    },
                    ["<C-Space>"] = cmp.mapping.complete(),
                },
                experimental = {
                    ghost_text = {
                        hl_group = "CmpGhostText",
                    },
                },
            }

            vim.diagnostic.config {
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            }
        end,
    },
}
