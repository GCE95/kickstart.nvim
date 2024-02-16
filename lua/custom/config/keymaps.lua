local opt = vim.opt
opt.clipboard = 'unnamedplus' -- Sync with system clipboard
opt.shiftwidth = 2
opt.tabstop = 2
opt.shiftround = true

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format {async=true}<CR>', { desc = 'Code Format' })
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u', '<C-u>zz')
-- Better indent
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
-- Plugins
vim.keymap.set('n', '<leader>e', '<cmd>Neotree reveal toggle<CR>', { desc = 'Neotree Toggle' })
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>')
vim.keymap.set('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit all' })
vim.keymap.set('n', '<leader>cc', '<cmd>Telescope colorscheme<CR>', { desc = 'Colorscheme' })
vim.keymap.set('n', '<leader>ut', '<cmd>UndotreeToggle<CR>', { desc = 'Undo Tree' })
-- Telescope
vim.keymap.set('n', '<leader>gs', '<cmd>Telescope git_status<CR>', { desc = '[G]it [S]tatus' })
vim.keymap.set('n', '<leader>gd', '<cmd>Telescope git_commits<CR>', { desc = '[G]it [C]ommits' })
vim.keymap.set('n', '<leader>gl', '<cmd>lua require("telescope").extensions.git_worktree.git_worktrees()<CR>',
	{ desc = 'Git Worktree' })
vim.keymap.set('n', '<leader>ga', '<cmd>lua require("telescope").extensions.git_worktree.create_git_worktree()<CR>',
	{ desc = 'Create Git Worktree' })

-- Splits
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<leader>]', '<cmd>vertical resize +10<CR>', { desc = 'Increase Window Width' })
vim.keymap.set('n', '<leader>[', '<cmd>vertical resize -10<CR>', { desc = 'Decrease Window Width' })

-- Window
vim.keymap.set('n', '<leader>ww', '<C-W>p', { desc = 'Other window' })
vim.keymap.set('n', '<leader>wd', '<C-W>c', { desc = 'Delete window' })
vim.keymap.set('n', '<leader>w-', '<C-W>s', { desc = 'Split window below' })
vim.keymap.set('n', '<leader>w|', '<C-W>v', { desc = 'Split window right' })
vim.keymap.set('n', '<leader>-', '<C-W>s', { desc = 'Split window below' })
vim.keymap.set('n', '<leader>|', '<C-W>v', { desc = 'Split window right' })
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer' })
vim.keymap.set('n', '[b', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev buffer' })
vim.keymap.set('n', ']b', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer' })

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
