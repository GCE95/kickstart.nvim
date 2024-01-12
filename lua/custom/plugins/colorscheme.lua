return {
	{ 'navarasu/onedark.nvim' },
	{ 'sainnhe/gruvbox-material' },
	{
		'catppuccin/nvim',
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = 'hard'
			vim.g.gruvbox_material_foreground = 'mix'
			vim.cmd.colorscheme 'catppuccin'
		end,
	},
}
