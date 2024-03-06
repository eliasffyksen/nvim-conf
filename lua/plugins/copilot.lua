return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				filetypes = {
					["*"] = true,
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
				},
				panel = { enabled = false },
			})
		end,
	},
	-- { "zbirenbaum/copilot-cmp", config = function () require("copilot_cmp").setup() end },
}

