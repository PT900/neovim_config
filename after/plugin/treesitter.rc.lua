require 'nvim-treesitter.install'.compilers = { "zig" }
require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.configs'.setup {
  -- auto_install = true,
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  matchup = {
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
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
