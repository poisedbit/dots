return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        dashboard = { enabled = false },
        explorer = { enabled = false },
        indent = { enabled = false },
        notifier = { enabled = false },
        scope = { enabled = false },
        scroll = { enabled = false },
        statuscolumn = { enabled = false },
        word = { enabled = false },
        --
        bigfile = { enabled = true },
        bufdelete = { enabled = true },
        image = { enabled = true },
        input = { enabled = true },
        quickfile = { enabled = true },
        picker = { enabled = true },
    },
    keys = {
        {
            "q",
            "<cmd>lua Snacks.bufdelete()<cr>",
            noremap = true,
        },
        {
            "<leader>.",
            "<cmd>lua Snacks.scratch()<cr>",
            noremap = true,
            desc = "toggle scratch buffer",
        },
        {
            "<leader>g/",
            "<cmd>lua Snacks.picker.grep()<cr>",
            noremap = true,
            desc = "live grep",
        },
        {
            "<leader>gf",
            "<cmd>lua Snacks.picker.files()<cr>",
            noremap = true,
            desc = "find files",
        },
        {
            "<leader>gb",
            "<cmd>lua Snacks.picker.buffers()<cr>",
            noremap = true,
            desc = "buffers",
        },
    },
    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                Snacks.toggle.dim():map "<leader>d"
            end,
        })
    end,
}
