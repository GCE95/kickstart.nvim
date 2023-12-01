return {
	{ 'navarasu/onedark.nvim' },
	{
		'catppuccin/nvim',
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'catppuccin'
		end,
	},
}
