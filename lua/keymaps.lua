vim.keymap.set("n", "<leader>n", function()
	if vim.bo.filetype == "oil" then
		require("oil").close()
	else
		require("oil").open()
	end
end, { desc = "File navigation" })

vim.keymap.set("n", "<leader> ", ":noh<cr>", { silent = true })

vim.keymap.set("n", "<leader>f", ":FzfLua files<cr>", { silent = true })
vim.keymap.set('n', '<leader>gf', ':FzfLua git_files<cr>', { silent = true })
vim.keymap.set('n', '<leader>gs', ':FzfLua git_status<cr>', { silent = true })
vim.keymap.set('n', '<leader>s', ':FzfLua live_grep<cr>', { silent = true })

