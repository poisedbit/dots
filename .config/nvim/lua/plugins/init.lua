return {
    { "nvim-tree/nvim-web-devicons", lazy = true, config = true },
    {
        "mbbill/undotree",
        lazy = true,
        cmd = {
            "UndotreeFocus",
            "UndotreeHide",
            "UndotreeShow",
            "UndotreeToggle",
        },
    },
    { "gbprod/cutlass.nvim", opts = { cut_key = "x", override_del = true } },
    {
        "kosayoda/nvim-lightbulb",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            autocmd = { enabled = true },
            sign = { enabled = true },
            number = { enabled = true },
        },
    },
    {
        "HiPhish/rainbow-delimiters.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        event = { "BufNewFile", "BufReadPost", "BufWritePre" },
        main = "rainbow-delimiters.setup",
        opts = {
            highlight = {
                "RainbowDelimiterCyan",
                "RainbowDelimiterViolet",
                "RainbowDelimiterGreen",
                "RainbowDelimiterOrange",
                "RainbowDelimiterBlue",
                "RainbowDelimiterYellow",
                --"RainbowDelimiterRed",
            },
        },
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        event = { "BufNewFile", "BufReadPost", "BufWritePre" },
        config = true,
    },
    {
        "joshuadanpeterson/typewriter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        lazy = true,
        cmd = {
            "TWDisable",
            "TWEnable",
            "TWToggle",
        },
        opts = {
            enable_horizontal_scroll = false,
        },
        init = function()
            vim.cmd "TWEnable"
        end,
    },
    {

        "Eandrju/cellular-automaton.nvim",
        lazy = true,
        cmd = {
            "CellularAutomaton",
        },
        keys = {
            {
                "<leader>c1",
                "<cmd>CellularAutomaton make_it_rain<cr>",
                desc = "make it rain",
            },
            {
                "<leader>c2",
                "<cmd>CellularAutomaton scramble<cr>",
                desc = "scramble",
            },

            {
                "<leader>c3",
                "<cmd>CellularAutomaton game_of_life<cr>",
                desc = "game of life",
            },
        },
    },
}
