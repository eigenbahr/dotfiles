-- Install plugins
require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

  use "nvim-lua/plenary.nvim"

  use { "ellisonleao/gruvbox.nvim" }
  use 'christoomey/vim-tmux-navigator'
  use 'numToStr/Comment.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-sleuth'
  use 'folke/which-key.nvim'

  use 'hashivim/vim-terraform'

  -- Maybe
  -- use 'akinsho/toggleterm.nvim'
  -- use 'tpope/vim-surround'
  -- use 'szw/vim-maximizer'
  -- use 'ahmedkhalf/project.nvim'
  -- use 'goolord/alpha-nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Clojure
  -- use 'Olical/conjure'

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      -- Snippet Collection (Optional)
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- DAP
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'ravenxrz/DAPInstall.nvim'
end)
