return {
    {
        "echasnovski/mini.clue",
        version = false,
        opts = function()
            local miniclue = require "mini.clue"
            return {
                triggers = {
                    -- Leader triggers
                    { mode = "n", keys = "<Leader>" },
                    { mode = "x", keys = "<Leader>" },

                    -- Built-in completion
                    { mode = "i", keys = "<C-x>" },

                    -- `g` key
                    { mode = "n", keys = "g" },
                    { mode = "x", keys = "g" },

                    -- Marks
                    { mode = "n", keys = "'" },
                    { mode = "n", keys = "`" },
                    { mode = "x", keys = "'" },
                    { mode = "x", keys = "`" },

                    -- Registers
                    { mode = "n", keys = '"' },
                    { mode = "x", keys = '"' },
                    { mode = "i", keys = "<C-r>" },
                    { mode = "c", keys = "<C-r>" },

                    -- Window commands
                    { mode = "n", keys = "<C-w>" },

                    -- `z` key
                    { mode = "n", keys = "z" },
                    { mode = "x", keys = "z" },
                },
                clues = {
                    -- Enhance this by adding descriptions for <Leader> mapping groups
                    miniclue.gen_clues.builtin_completion(),
                    miniclue.gen_clues.g(),
                    miniclue.gen_clues.marks(),
                    miniclue.gen_clues.registers(),
                    miniclue.gen_clues.windows(),
                    miniclue.gen_clues.z(),
                },
                window = {
                    delay = 200,
                },
            }
        end,
    },
    { "echasnovski/mini.cursorword", version = false, config = true },
    { "echasnovski/mini.indentscope", version = false, config = true },
    {
        "echasnovski/mini.move",
        version = false,
        opts = {
            mappings = {
                left = "<A-h>",
                right = "<A-l>",
                down = "<A-j>",
                up = "<A-k>",
                line_left = "<A-h>",
                line_right = "<A-l>",
                line_down = "<A-j>",
                line_up = "<A-k>",
            },
        },
    },
    --{ "echasnovski/mini.notify", version = false, config = true },
    {
        "echasnovski/mini.pairs",
        version = false,
        event = "InsertEnter",
        config = true,
    },
    { "echasnovski/mini.sessions", version = false, config = true },
    {
        "echasnovski/mini.starter",
        version = false,
        event = "VimEnter",
        config = true,
    },
    {
        "echasnovski/mini.statusline",
        version = false,
        event = "VeryLazy",
        config = true,
    },
    { "echasnovski/mini.tabline", version = false, config = true },
}
