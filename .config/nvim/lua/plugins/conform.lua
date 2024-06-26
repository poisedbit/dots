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
                --svelte = { "" },
                toml = { "taplo" },
                yaml = { "prettier" },
            },
            format_on_save = {
                lsp_fallback = true,
                timeout_ms = 200,
            },
            formatters = {
                svelte = {
                    command = "lua vim.lsp.buf.format()",
                },
            },
            log_level = vim.log.levels.ERROR,
            notify_on_error = true,
        }

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function(args)
                require("conform").format { bufnr = args.buf }
            end,
        })

        -- sorta fix for no good svelte formatter for neovim
        vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
            pattern = "*.svelte",
            callback = vim.lsp.buf.format,
        })
    end,
    cmd = "ConformInfo",
}
