return {
	-- Everything related to mini ai
	{
		'echasnovski/mini.nvim',
		version = false,
		event = 'VeryLazy',
		config = function()
			require('mini.cursorword').setup()
			require('mini.pairs').setup()
			require('mini.ai').setup()
			require('mini.comment').setup()
		end,
	},
	{
		'echasnovski/mini.bufremove',
		event = 'VeryLazy',
		-- stylua: ignore
		keys = {
			{ "<leader>bd", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
			{
				"<leader>bD",
				function() require("mini.bufremove").delete(0, true) end,
				desc =
				"Delete Buffer (Force)"
			},
		},
	},
}
