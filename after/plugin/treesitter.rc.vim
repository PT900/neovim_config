if !exists('g:loaded_nvim_treesitter')
    finish
endif

lua << EOF
require 'nvim-treesitter.install'.compilers = { "clang" }
require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.configs'.setup {
    auto_install = true,
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "toml",
        "fish",
        "php",
        "json",
        "yaml",
        "swift",
        "html",
        "scss",
        "c",
        "cpp",
        "dart",
        "lua",
        "vim"
    },
    autotag = {
      enable = true,
    },
}
EOF
