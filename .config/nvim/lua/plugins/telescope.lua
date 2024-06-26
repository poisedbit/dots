return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    cmd = "Telescope",
    keys = function()
        local builtin = require "telescope.builtin"
        return {
            {
                "<leader>fh",
                builtin.find_files,
                noremap = true,
                desc = "find files",
            },
            {
                "<leader>fj",
                builtin.live_grep,
                noremap = true,
                desc = "live grep",
            },
            {
                "<leader>fk",
                builtin.buffers,
                noremap = true,
                desc = "buffers",
            },
            {
                "<leader>fl",
                builtin.current_buffer_fuzzy_find,
                noremap = true,
                desc = "buffer fuzzy find",
            },
        }
    end,
}
