-- nvim-cmp.lua
return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"luckasRanarison/tailwind-tools.nvim",
		"onsails/lspkind-nvim",
		-- ...
	},
	opts = function()
		return {
			-- ...
			formatting = {
				format = require("lspkind").cmp_format({
					before = require("tailwind-tools.cmp").lspkind_format,
				}),
			},
		}
	end,
}
