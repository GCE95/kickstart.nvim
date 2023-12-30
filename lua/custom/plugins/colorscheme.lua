return {
	{ 'navarasu/onedark.nvim' },
	{ 'projekt0n/github-nvim-theme' },
	{
		'catppuccin/nvim',
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'catppuccin'
		end,
	},
}
