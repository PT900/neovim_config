hooks = {
  diff_buf_read = function(bufnr)
    -- Change local options in diff buffers
    vim.opt_local.wrap = false
    vim.opt_local.list = false
    -- vim.opt_local.colorcolumn = { 80 }
  end,
  view_opened = function(view)
    print(
      ("A new %s was opened on tab page %d!")
      :format(view:class():name(), view.tabpage)
    )
  end,
}

-- Bindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<F7>', '<Cmd>DiffviewOpen<CR>', opts)
map('n', '<F8>', '<Cmd>DiffviewClose<CR>', opts)
