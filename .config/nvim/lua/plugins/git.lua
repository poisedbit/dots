return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufNewFile", "BufReadPost", "BufWritePre" },
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = {
                    text = "▁",
                },
                topdelete = {
                    text = "▔",
                },
            },
        },
    },
    {
        "f-person/git-blame.nvim",
        event = { "BufNewFile", "BufReadPost", "BufWritePre" },
        main = "gitblame",
        config = true,
    },
}
