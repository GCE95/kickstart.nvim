return {
	'nvim-neotest/neotest',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'antoinemadec/FixCursorHold.nvim',
		'nvim-treesitter/nvim-treesitter',
		'nvim-neotest/neotest-python',
		'nvim-neotest/neotest-go',
	},
	config = function()
		require('neotest').setup {
			adapters = {
				require 'neotest-python' {
					dap = { justMyCode = false },
				},
				require 'neotest-go',
			},
		}
	end,
	-- stylua: ignore
	keys = {
		{ '<leader>tt', function() require('neotest').run.run(vim.fn.expand("%")) end,                      desc = 'Run File', },
		{ '<leader>tr', function() require('neotest').run.run() end,                                        desc = 'Run Nearest', },
		{ '<leader>ts', function() require('neotest').summary.toggle() end,                                 desc = 'Toggle Summary' },
		{ '<leader>to', function() require('neotest').output.open({ enter = true, auto_close = true }) end, desc = 'Toggle Output' }
	},
}
