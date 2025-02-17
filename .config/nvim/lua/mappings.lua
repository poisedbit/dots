local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
map("n", "Q", "<Nop>", { silent = true })

map("n", ";", ":", { noremap = true })
map("n", "<C-s>", "<cmd>w<CR>", { noremap = true })

--map("n", "q", "<cmd> bd <CR>", opts)
map("n", "<S-h>", "<cmd>bprev<CR>", opts)
map("n", "<S-l>", "<cmd>bnext<CR>", opts)

-- Center search results
map("n", "n", "nzz", { noremap = true })
map("n", "N", "Nzz", { noremap = true })
