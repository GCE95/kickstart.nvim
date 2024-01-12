return {
	{
		'windwp/nvim-autopairs',
		event = 'InsertEnter',
		opts = {},
	},
	{
		'echasnovski/mini.nvim',
		version = false,
		event = 'VeryLazy',
		config = function()
			require('mini.cursorword').setup()
			-- require('mini.pairs').setup()
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
	{
		'nvim-treesitter/nvim-treesitter-context',
	},
	{
		'LunarVim/bigfile.nvim',
		config = function()
			require('bigfile').setup {
				size_limit = 1000000,
				features = { -- features to disable
					'indent_blankline',
					'treesitter',
				},
			}
		end,
	},
}
