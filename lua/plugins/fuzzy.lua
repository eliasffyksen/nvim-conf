return {
	'ibhagwan/fzf-lua',
	dependencies = {'nvim-tree/nvim-web-devicons'},
	opts = {
		files = {
			find_opts = [[-type f -not -path '*/\.*/*' -printf '%P\n']]
		},
	},
}
