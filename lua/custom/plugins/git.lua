return {

	-- Neogit
	{
		'NeogitOrg/neogit',
		dependencies = {
			'nvim-lua/plenary.nvim',  -- required
			'sindrets/diffview.nvim', -- optional - Diff integration

			-- Only one of these is needed, not both.
			'nvim-telescope/telescope.nvim', -- optional
			'ibhagwan/fzf-lua',              -- optional
		},
		config = true,
	},

	{
		'ThePrimeagen/git-worktree.nvim',
		config = function()
			require('telescope').load_extension 'git_worktree'
		end,
	},
	-- -- Copilot
	-- {
	-- 	'zbirenbaum/copilot.lua',
	-- 	cmd = 'Copilot',
	-- 	build = ':Copilot auth',
	-- 	event = 'InsertEnter',
	-- 	config = function()
	-- 		require('copilot').setup {
	-- 			panel = {
	-- 				enabled = true,
	-- 				auto_refresh = true,
	-- 			},
	-- 			suggestion = {
	-- 				enabled = true,
	-- 				auto_trigger = true,
	-- 				accept = false, -- disable built-in keymapping
	-- 			},
	-- 		}
	--
	-- 		local cmp_status_ok, cmp = pcall(require, 'cmp')
	-- 		if cmp_status_ok then
	-- 			cmp.event:on('menu_opened', function()
	-- 				vim.b.copilot_suggestion_hidden = true
	-- 			end)
	--
	-- 			cmp.event:on('menu_closed', function()
	-- 				vim.b.copilot_suggestion_hidden = false
	-- 			end)
	-- 		end
	-- 	end,
	-- },
}
