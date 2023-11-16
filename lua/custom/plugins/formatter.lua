return {
  {
    'nvimtools/none-ls.nvim',
    event = 'VeryLazy',
    dependencies = { 'mason.nvim' },
    opts = function()
      local nls = require 'null-ls'
      return {
        root_dir = require('null-ls.utils').root_pattern('.null-ls-root', '.neoconf.json', 'Makefile', '.git'),
        sources = {
          nls.builtins.formatting.fish_indent,
          nls.builtins.diagnostics.fish,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.shfmt,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.goimports,
          nls.builtins.formatting.gofmt,
          nls.builtins.formatting.black,
          nls.builtins.formatting.isort,
        },
      }
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
  },
}
