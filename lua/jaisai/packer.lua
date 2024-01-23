-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  -- use({
  --     'rose-pine/neovim',
  --     as = 'rose-pine',
  --     config = function()
  --         vim.cmd('colorscheme rose-pine')
  --     end
  -- })

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }


 use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

 use ('nvim-treesitter/playground')

 use ('nvim-treesitter/nvim-treesitter-context')

 use ('ThePrimeagen/vim-be-good')

 use ('nvim-lua/plenary.nvim')

 use ('ThePrimeagen/harpoon')

 use ('mbbill/undotree')

 use ('tpope/vim-fugitive')

 use {'neoclide/coc.nvim', branch = 'release'}

 -- use {
	--  'VonHeikemen/lsp-zero.nvim',
	--  branch = 'v3.x',
	--  requires = {
	-- 	 --- Uncomment these if you want to manage LSP servers from neovim
	-- 	 {'williamboman/mason.nvim'},
	-- 	 {'williamboman/mason-lspconfig.nvim'},
 --
	-- 	 -- LSP Support
	-- 	 {'neovim/nvim-lspconfig'},
	-- 	 -- Autocompletion
	-- 	 {'hrsh7th/nvim-cmp'},
	-- 	 {'hrsh7th/cmp-nvim-lsp'},
 --         {'hrsh7th/cmp-buffer'},
 --         {'hrsh7th/cmp-path'},
 --         {'saadparwaiz1/cmp_luasnip'},
 --         {'hrsh7th/cmp-nvim-lua'},
	-- 	 {'L3MON4D3/LuaSnip'},
 --         {'rafamadriz/friendly-snippets'}
	--  }
 -- }

 use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

end)
