-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'terrortylor/nvim-comment'

	use 'jiangmiao/auto-pairs' -- auto pairing paranthesis
	use 'mbbill/undotree'
	use {
		'andymass/vim-matchup',
		setup = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end
	} -- TODO learn about methods

	use {
		'dense-analysis/ale',
		config = function()
			-- Configuration goes here.
			local g = vim.g

			g.ale_ruby_rubocop_auto_correct_all = 1

			g.ale_linters = {
				ruby = {'rubocop', 'ruby'},
				lua = {'lua_language_server'}
			}
		end
	} -- lint engine

	use({"petertriho/cmp-git", requires = "nvim-lua/plenary.nvim"}) -- TODO learn about this thing

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'rafamadriz/friendly-snippets'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'neovim/nvim-lspconfig'

	use 'jesseduffield/lazygit' --lazygit

	-- use "iamcco/markdown-preview.nvim"

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } --syntax hilighting

	use {"akinsho/toggleterm.nvim", tag = '*',
		require("toggleterm").setup()
	} -- TODO keybindings


	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	} --status line


	use "nvim-tree/nvim-tree.lua" --file explorer

	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },  --GitSigns
	}


	--colorschemes
	use {
		'ribru17/bamboo.nvim',
		'dracula/vim', as = 'dracula',
		'ayu-theme/ayu-vim',
	}

end)

