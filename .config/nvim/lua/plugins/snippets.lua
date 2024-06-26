return {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    event = "InsertEnter",
    config = function()
        local luasnip = require "luasnip"

        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_vscode").lazy_load {
            paths = vim.g.vscode_snippets_path or "",
        }

        luasnip.config.setup {
            history = true,
            delete_check_events = "TextChanged",
        }
    end,
}
