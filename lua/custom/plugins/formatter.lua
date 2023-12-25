return {
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
					markdown = { 'prettier' },
					json = { { 'ruff_format', 'prettier' } },
					-- Use a sub-list to run only the first available formatter
					javascript = { { 'prettierd', 'prettier' } },
				},
			}
		end,
	},
}
