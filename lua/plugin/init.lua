-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'jiangmiao/auto-pairs' 
	use {'andymass/vim-matchup', event = 'VimEnter'}

	use {
		'w0rp/ale',
		ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex', 'python'},
		cmd = 'ALEEnable',
		config = 'vim.cmd[[ALEEnable]]'
	}

	use {
		'haorenW1025/completion-nvim',
		opt = true,
		requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
	}

	-- Plugins can also depend on rocks from luarocks.org:
	use {
		'my/supercoolplugin',
		rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
	}

	-- You can specify rocks in isolation
	use_rocks 'penlight'
	use_rocks {'lua-resty-http', 'lpeg'}

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
	}
end)
