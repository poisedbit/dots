vim.lsp.config("*", {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),

})

vim.lsp.config.lua_ls = {
    settings = {
        Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
            diagnostics = { globals = { "vim" } },
        },
    },
}

vim.diagnostic.config {
    virtual_text = false,
    virtual_lines = true,
    update_in_insert = true,
}

vim.lsp.enable {
    "bashls",
    "clangd",
    "cssls",
    "html",
    "jsonls",
    "ts_ls",
    "lua_ls",
    "rust_analyzer",
    "svelte",
    "taplo",
    "yamlls",
}
