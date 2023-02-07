local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local n = { noremap = true }
local s = { silent = true }

-- Useful keymap
keymap.set('n', 'x', '"_x') -- Delete single character backward
keymap.set('n', '<C-a>', 'gg<S-v>G') -- Select all
keymap.set('n', '+', '<C-a>') -- Increment
keymap.set('n', '-', '<C-x>') -- Decrement
keymap.set('n', 'dw', 'vb"_d') -- Delete a word backwards
-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
-- Leader key
vim.g.mapleader=','
-- Plugins
keymap.set('n', '<F5>', '<Cmd>NvimTreeToggle<CR>', opts)
keymap.set('n', '<F8>', '<Cmd>TagbarToggle<CR>', opts)
keymap.set('n', '<F12>', '<Cmd>ShowSpaces 1<CR>', s)
keymap.set('n', '<S-F12>', 'm`<Cmd>TagbarToggle<CR>')
keymap.set('v', '<S-F-12>', '<Cmd>TrimSpaces<CR>')
-- Telescope
keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', opt)
keymap.set('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>', opt)
keymap.set('n', '<leader>fb', '<Cmd>Telescope buffers<CR>', opt)
keymap.set('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>', opt)
