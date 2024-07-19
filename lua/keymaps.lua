vim.keymap.set("n", "<leader>n", function()
	if vim.bo.filetype == "oil" then
		require("oil").close()
	else
		require("oil").open()
	end
end, { desc = "File navigation" })

vim.keymap.set("n", "<leader> ", ":noh<cr>", { silent = true })

-- Tabs
vim.keymap.set("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", { noremap = true })
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { noremap = true })
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { noremap = true })
-- move current tab to previous position
vim.keymap.set("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
-- move current tab to next position
vim.keymap.set("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })

-- Window navigation
vim.keymap.set("n", "<leader>w|", ':vsplit<CR>', { noremap = true })
vim.keymap.set("n", "<leader>w-", ':split<CR>', { noremap = true })
vim.keymap.set("n", "<leader>wh", '<C-w>h', { noremap = true })
vim.keymap.set("n", "<leader>wj", '<C-w>j', { noremap = true })
vim.keymap.set("n", "<leader>wk", '<C-w>k', { noremap = true })
vim.keymap.set("n", "<leader>wl", '<C-w>l', { noremap = true })

-- Telescope
vim.keymap.set('n', '<leader>ff', ':FzfLua files<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fs', ':FzfLua grep_project<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fd', ':FzfLua lsp_document_symbols<cr>', { noremap = true })

-- LSP
vim.keymap.set('n', '<leader>ll', vim.lsp.buf.hover, { noremap = true })
vim.keymap.set('n', '<leader>lt', vim.lsp.buf.type_definition, { noremap = true })
vim.keymap.set('n', '<leader>lR', vim.lsp.buf.rename, { noremap = true })
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { noremap = true })
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist, { noremap = true })
vim.keymap.set('n', '<leader>lf', function()
	vim.lsp.buf.format({ async = true })
end, { noremap = true })
vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, { noremap = true })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { noremap = true })
vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, { noremap = true })
vim.keymap.set('n', '<leader>lK', vim.diagnostic.open_float, { noremap = true })
vim.keymap.set('n', '<leader>lr', ':Telescope lsp_references<cr>', { noremap = true })
vim.keymap.set('n', '<leader>lp', vim.diagnostic.goto_prev, { noremap = true })
vim.keymap.set('n', '<leader>ln', vim.diagnostic.goto_next, { noremap = true })

