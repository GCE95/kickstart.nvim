return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true,
			}
		},
	},
	config = function()
		require("neo-tree").setup(_, opts)
	end,
}
