vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { "catppuccin/nvim", as = "catppuccin" }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- LSP stuff
  use { 'nvim-treesitter/nvim-treesitter',  run = ':TSUpdate'}
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- prettier
  -- use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use 'airblade/vim-gitgutter'
  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })
end)

