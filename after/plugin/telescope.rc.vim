nnoremap <silent> <leader>ff <Cmd>Telescope find_files<CR>
nnoremap <silent> <leader>fg <Cmd>Telescope live_grep<CR>
nnoremap <silent> <leader>fb <Cmd>Telescope buffers<CR>
nnoremap <silent> <leader>fh <Cmd>Telescope help_tags<CR>

lua << EOF
local actions = require('telescope.actions')

require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    },
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close
            },
        },
    }
}

-- require('telescope').load_extension('fzf')
EOF
