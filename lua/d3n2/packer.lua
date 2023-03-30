vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use "olimorris/onedarkpro.nvim"
    

use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
}
use( 'nvim-treesitter/nvim-treesitter',{run=':TSUpdate'})
use( 'nvim-treesitter/playground')
use( 'ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{                                      -- Optional
		'williamboman/mason.nvim',
		run = function()
			pcall(vim.cmd, 'MasonUpdate')
		end,
	},
	{'williamboman/mason-lspconfig.nvim'}, -- Optional

	-- Autocompletion
	{'hrsh7th/nvim-cmp'},         -- Required
	{'hrsh7th/cmp-nvim-lsp'},     -- Required
	{'hrsh7th/cmp-buffer'},       -- Optional
	{'hrsh7th/cmp-path'},         -- Optional
	{'saadparwaiz1/cmp_luasnip'}, -- Optional
	{'hrsh7th/cmp-nvim-lua'},     -- Optional

	-- Snippets
	{'L3MON4D3/LuaSnip'},             -- Required
	{'rafamadriz/friendly-snippets'}, -- Optional
}
}
end)

