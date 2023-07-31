local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Useful keymap
keymap.set('n', 'x', '"_x')              -- Delete single character backward
keymap.set('n', '<C-a>', 'gg<S-v>G')     -- Select all
keymap.set('n', '+', '<C-a>')            -- Increment
keymap.set('n', '-', '<C-x>')            -- Decrement
keymap.set('i', '<C-BS>', 'vb"_d', opts) -- Delete a word backwards
keymap.set('n', '<C-s>', '<Cmd>w<CR>')   -- Save with Ctrl+s
keymap.set('n', '<C-c>', 'Y')            -- Yank with Ctrl+c in normal mode
keymap.set('v', '<C-c>', 'Y')            -- Yank with Ctrl+c in visual mode

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Leader key
vim.g.mapleader = ','

-- Plugins
keymap.set('n', '<F5>', '<Cmd>NvimTreeToggle<CR>', opts)
keymap.set('n', '<F6>', '<Cmd>TagbarToggle<CR>', opts)
keymap.set('n', '<F7>', '<Cmd>DiffviewOpen<CR>', opts)
keymap.set('n', '<F8>', '<Cmd>DiffviewClose<CR>', opts)
keymap.set('n', '<S-F12>', '<Cmd>StripTrailingWhitespace<CR><Cmd>w<CR>', opts) -- Remove whitespace and save

-- Telescope
keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', opts)
keymap.set('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>', opts)
keymap.set('n', '<leader>fb', '<Cmd>Telescope buffers<CR>', opts)
keymap.set('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>', opts)

-- BarBar
-- Move to previous/next
keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Magic buffer-picking mode
keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Lspsaga
keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
keymap.set('n', 'gl', '<Cmd>Lspsaga show_diagnostic<CR>', opts)
keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
keymap.set('n', 'go', '<Cmd>Lspsaga outline<CR>', opts)
-- keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
keymap.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
keymap.set('n', 'gP', '<Cmd>Lspsaga goto_definition<CR>', opts)
keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
keymap.set('n', 'gT', '<Cmd>Lspsaga term_toggle<CR>', opts)
