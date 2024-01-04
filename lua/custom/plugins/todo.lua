return {
	{
		'folke/todo-comments.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		event = 'VeryLazy',
		config = true,
		keys = {
			{ '<leader>xt', '<cmd>TodoTrouble<cr>',   'Show Trouble' },
			{ '<leader>st', '<cmd>TodoTelescope<cr>', 'Show TODOs' },
		},
	},
	{
		'folke/trouble.nvim',
		config = true,
		event = 'VeryLazy',
	},
}
