return {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
        require("conform").setup {
            formatters_by_ft = {
                html = { "prettier" },
                css = { "prettier" },
                scss = { "prettier" },
                json = { "prettier" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                lua = { "stylua" },
                markdown = { "prettier" },
                rust = { "rustfmt" },
                toml = { "taplo" },
                yaml = { "prettier" },
            },
            format_on_save = {
                timeout_ms = 200,
            },
            default_format_opts = {
                lsp_format = "fallback",
            },
            log_level = vim.log.levels.ERROR,
            notify_on_error = true,
        }
    end,
    cmd = "ConformInfo",
}
