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
  use 'nvim-lua/plenary.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
    },
  }
  use 'akinsho/flutter-tools.nvim' -- Flutter tools that provide all thing include LSP for dart
  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/popup.nvim'
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
