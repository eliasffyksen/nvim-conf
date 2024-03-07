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
vim.keymap.set('n', '<leader>bf', ':FzfLua buffers<cr>', {})
vim.keymap.set('n', '<leader>bd', ':bd<cr>', { noremap = true })
vim.keymap.set('n', '<leader>x', ':w<cr>:bd<cr>', { noremap = true })

vim.keymap.set("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", { noremap = true })
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { noremap = true })
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { noremap = true })
-- move current tab to previous position
vim.keymap.set("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
-- move current tab to next position
vim.keymap.set("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })


