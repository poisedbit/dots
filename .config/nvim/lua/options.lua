local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true

opt.autoindent = true
-- opt.smartindent = true
opt.breakindent = true

opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.undofile = true

opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true

opt.completeopt = "menuone,noselect"

opt.mouse = "a"

opt.fillchars = { eob = " " }
opt.cursorline = true
opt.number = true
opt.ruler = false
opt.scrolloff = 8
opt.signcolumn = "yes:1"
opt.colorcolumn = "80"

opt.encoding = "utf-8"
opt.eol = true
opt.fileformat = "unix"

opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
-- opt.guifont = "SF Mono"

opt.laststatus = 3
opt.updatetime = 50
opt.timeoutlen = 300
