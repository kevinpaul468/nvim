require("nvim-treesitter.configs").setup{
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python", "javascript", "java", "terraform" },
	 auto_install = true,

	 sync_install = false,
	 hilight = {
		 enable = true
	 }
}
