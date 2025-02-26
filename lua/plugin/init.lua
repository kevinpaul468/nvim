-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'jiangmiao/auto-pairs' 
	use {'andymass/vim-matchup', event = 'VimEnter'}

	use {
		'w0rp/ale',
		ft = {'sh', 'zsh', 'bash', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex', 'python'},
		cmd = 'ALEEnable',
		config = 'vim.cmd[[ALEEnable]]'
	}

	use {
		'haorenW1025/completion-nvim',
		opt = true,
		requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
	}

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-git'

	use 'mbbill/undotree'

	use "rafamadriz/friendly-snippets"
	use "terrortylor/nvim-comment"

	use "hashivim/vim-terraform"
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	use 'nvim-tree/nvim-tree.lua'

	use 'nvim-lualine/lualine.nvim'

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}

	-- Plugins can have post-install/update hooks
	use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

	-- Post-install/update hook with neovim command
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- Post-install/update hook with call of vimscript function with argument
	use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

	-- Use specific branch, dependency and run lua file after load
	use {
		'glepnir/galaxyline.nvim', branch = 'main', 
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	--git 
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
	}


	--colorschemes
	use {
		'ribru17/bamboo.nvim',
		'dracula/vim', as = 'dracula',
		'ayu-theme/ayu-vim',
	}
end)
