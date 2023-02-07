local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

  -- Packer
  use 'wbthomason/packer.nvim'
  -- All about lsp and completion
  use 'prabirshrestha/vim-lsp'
  use 'mattn/vim-lsp-settings'
  use 'nvim-lua/plenary.nvim'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'L3MON4D3/LuaSnip' -- Snipsets
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Beautify
  use 'nvim-lualine/lualine.nvim'
  use 'romgrk/barbar.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'nvim-tree/nvim-web-devicons'
  -- Functional & Tools
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'cohama/lexima.vim'
  use {'andymass/vim-matchup', event = 'VimEnter'}
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use 'nvim-tree/nvim-tree.lua'
  use 'preservim/tagbar'
  use 'junegunn/fzf.vim'
  use 'sindrets/diffview.nvim'
  -- Speedup on start up
  use 'lewis6991/impatient.nvim'

end)
