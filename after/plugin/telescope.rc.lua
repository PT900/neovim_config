local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions

require('telescope').setup {
  defaults = {
    path_display = { "smart" },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    layout_strategy = "horizontal",
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    }
  }
}

telescope.load_extension('fzf')
telescope.load_extension('file_browser')

vim.keymap.set("n", "<leader>ft", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    -- cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
