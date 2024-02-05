return {
	{ 'navarasu/onedark.nvim' },
	{ 'sainnhe/everforest' },
	{
		'catppuccin/nvim',
		priority = 1000,
		config = function()
			vim.g.everforest_backgroun = 'hard'
			vim.cmd.colorscheme 'catppuccin'
		end,
	},
}
