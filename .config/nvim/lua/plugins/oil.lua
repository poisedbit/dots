return {
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        opts = {
            delete_to_trash = true,
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["="] = "<cmd>w<CR>",
            },
        },
        keys = {
            {
                "<leader>e",
                "<cmd>Oil<cr>",
                noremap = true,
                desc = "oil",
            },
        },
    },
}
