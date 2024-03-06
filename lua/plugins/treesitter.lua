return {
	'nvim-treesitter/nvim-treesitter',
	opts = {
		ensure_installed = {
			'python',
			'vim',
			'lua',
			'vimdoc',
		},
		highlight = {enable = true},
		matchup = {enable = true},
	},
	event = {'BufReadPre'},
}
