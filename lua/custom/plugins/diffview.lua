return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {
      diff_binaries = false, -- Show diffs for binaries
      enhanced_diff_hl = true, -- See ':h diffview-config-enhanced_diff_hl'
      use_icons = true, -- Requires nvim-web-devicons
      icons = {
        folder_closed = '',
        folder_open = '',
        folder_empty = '',
      },
      signs = {
        fold_closed = '',
        fold_open = '',
        done = '✓',
      },
    }

    vim.keymap.set('n', '<leader>gdv', ':DiffviewOpen<CR>', { desc = '[G]it [D]iffview [O]pen' })
    vim.keymap.set('n', '<leader>gdc', ':DiffviewClose<CR>', { desc = '[G]it [D]iffview [C]lose' })
  end,
}
