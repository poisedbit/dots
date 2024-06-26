vim.g.mapleader = " "
vim.g.maplocalleader = " "

require "options"
require "mappings"

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
    pattern = "*",
})

require "laze"
