local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
map("n", "Q", "<Nop>", { silent = true })

map("n", ";", ":", { noremap = true })
map("n", "<C-s>", "<cmd> w <CR>", { noremap = true })

map("i", "<C-h>", "<left>", opts)
map("i", "<C-l>", "<right>", opts)
map("i", "<C-j>", "<down>", opts)
map("i", "<C-k>", "<up>", opts)

map("n", "q", "<cmd> bd <CR>", opts)
map("n", "<S-h>", "<cmd> bprev <CR>", opts)
map("n", "<S-l>", "<cmd> bnext <CR>", opts)

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Center search results
map("n", "n", "nzz", { noremap = true })
map("n", "N", "Nzz", { noremap = true })
