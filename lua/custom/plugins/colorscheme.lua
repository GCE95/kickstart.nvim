return {
	{ 'navarasu/onedark.nvim' },
	{ 'EdenEast/nightfox.nvim' },
	{
		'catppuccin/nvim',
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'nightfox'
		end,
	},
}
