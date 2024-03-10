return {
	'ibhagwan/fzf-lua',
	dependencies = {'nvim-tree/nvim-web-devicons'},
	config = function ()
		require('fzf-lua').setup({
			files = {
				fd_opts = '--color=never --type f --hidden --follow --exclude .git',
			},
		})
	end
}
