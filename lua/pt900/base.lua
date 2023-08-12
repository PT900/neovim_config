vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.updatetime = 50
vim.opt.signcolumn = "yes"
vim.go.tw = 150
vim.opt.wrap = false -- No Wrap lines
vim.cmd("filetype plugin on")
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' }                                 -- Finding files - Search down into subfolders
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]   -- Format on save
vim.cmd [[autocmd FileType * setlocal formatoptions -= cro]] -- Disable auto comment when newline on commented line
