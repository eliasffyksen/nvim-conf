return {
	-- lspconfig
	{
		"neovim/nvim-lspconfig",
		opts = {},
		config = function()
			local utils = require("utils.lsp")
			vim.o.updatetime = 1
			vim.cmd([[
			  highlight DiagnosticLineNrError guibg=#51202A guifg=#FF0000 gui=bold
			  highlight DiagnosticLineNrWarn guibg=#51412A guifg=#FFA500 gui=bold
			  highlight DiagnosticLineNrInfo guibg=#1E535D guifg=#00FFFF gui=bold
			  highlight DiagnosticLineNrHint guibg=#1E205D guifg=#0000FF gui=bold

			  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
			  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
			  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
			  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
			]])

			local lsp = require("lspconfig")
			local lsp_keymap = require("keymap.lsp_keymaps")

			-- simple example
			lsp.pyright.setup({
				on_attach = lsp_keymap.on_attach,
				handlers = utils.lsp_handlers,
				capabilities = utils.c,
			})

			-- Rust analyzer
			lsp.rust_analyzer.setup({
				['rust-analyzer'] = {},
			})
		end,
		ft = {
			-- make sure only adding configured ones here
			"python",
			"rust",
		},
	},
}
