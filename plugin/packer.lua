-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'jiangmiao/auto-pairs'
	use {'andymass/vim-matchup', event = 'VimEnter'}

	use('dense-analysis/ale')
	use 'petertriho/cmp-git'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'rafamadriz/friendly-snippets'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'neovim/nvim-lspconfig'

	use 'jesseduffield/lazygit'

	use "iamcco/markdown-preview.nvim"

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use {"akinsho/toggleterm.nvim", tag = '*',
		require("toggleterm").setup()
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
		require("lualine").setup{}
	}


	use "nvim-tree/nvim-tree.lua"

	--git
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
	}


	--colorschemes
	use {
		'ribru17/bamboo.nvim',
		'dracula/vim', as = 'dracula',
		'ayu-theme/ayu-vim',
		-- require ("bamboo").load(),
		vim.cmd("colorscheme ayu")
	}

end)

