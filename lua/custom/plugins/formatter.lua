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
					markdown = { 'prettierd' },
					go = { 'gofmt' },
					json = { 'prettierd' },
					javascript = { 'prettierd' },
				},
			}
		end,
	},
}
