return {
	{
		'nvim-neo-tree/neo-tree.nvim',
		version = '*',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
			'MunifTanjim/nui.nvim',
		},
		opts = {
			filesystem = {
				follow_current_file = {
					enabled = true,
					leave_dirs_open = true,
				},
			},
		},
		config = function()
			require('neo-tree').setup(_, opts)
		end,
	},

	{
		'stevearc/conform.nvim',
		opts = {},
		config = function()
			require('conform').setup {
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 500,
					lsp_fallback = true,
				},
				formatters_by_ft = {
					lua = { 'stylua' },
					-- Conform will run multiple formatters sequentially
					python = { 'ruff_format' },
					markdown = { 'prettierd' },
					go = { 'gofumpt', 'goimports' },
					javascript = { 'prettier' },
					json = { 'prettierd' }
				},
			}
		end,
	},

	{
		'cameron-wags/rainbow_csv.nvim',
		config = true,
		ft = {
			'csv',
			'tsv',
			'csv_semicolon',
			'csv_whitespace',
			'csv_pipe',
			'rfc_csv',
			'rfc_semicolon',
		},
		cmd = {
			'RainbowDelim',
			'RainbowDelimSimple',
			'RainbowDelimQuoted',
			'RainbowMultiDelim',
		},
	},

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
			require('mini.ai').setup()
			require('mini.comment').setup()
			require('mini.surround').setup()
			-- require('mini.statusline').setup()
		end,
	},
	{
		'nvim-treesitter/nvim-treesitter-context',
	},
	{
		'nvim-pack/nvim-spectre',
		build = false,
		cmd = 'Spectre',
		opts = { open_cmd = 'noswapfile vnew' },
		-- stylua: ignore
		keys = {
			{ "<leader>fr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
		},
	},
	{
		'LunarVim/bigfile.nvim',
	},
	{
		'mbbill/undotree',
	},
}
