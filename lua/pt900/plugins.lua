local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- All about lsp and completion
  use 'prabirshrestha/vim-lsp'
  use 'nvim-lua/plenary.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'L3MON4D3/LuaSnip' -- Snippets
  use 'nvim-lua/popup.nvim'
  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- Code format
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as language server
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in
  use { 'jdhao/whitespace.nvim', event = 'VimEnter' } -- Plugin that handle whitespace
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  -- Beautify
  use 'nvim-lualine/lualine.nvim' -- Status bar at bottom
  use 'romgrk/barbar.nvim' -- Tab bar at top
  use 'EdenEast/nightfox.nvim' -- Colorscheme
  use 'nvim-tree/nvim-web-devicons' -- Icons
  -- Functional & Tools
  use 'tpope/vim-fugitive' -- Git in vim
  use 'tpope/vim-rhubarb'
  use { 'andymass/vim-matchup', event = 'VimEnter' }
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use 'nvim-tree/nvim-tree.lua'
  use 'preservim/tagbar'
  use 'sindrets/diffview.nvim'
  -- Speedup on startup
  use 'lewis6991/impatient.nvim'
end)
