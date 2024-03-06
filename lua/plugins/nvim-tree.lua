return {
	{
		'nvim-tree/nvim-tree.lua',
		config = function()
			local nvim_tree = require('nvim-tree')
			local tree = require('nvim-tree.api').tree

			nvim_tree.setup({})

			vim.keymap.set('n', '<leader>e', function()
				if tree.is_tree_buf() then
					tree.close({})
				else
					tree.focus({})
				end
			end)
		end,
	},
}
