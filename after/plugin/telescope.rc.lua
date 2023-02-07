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