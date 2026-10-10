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
      hooks = {
        -- Diffview sets foldlevel=0 on attach; this hook runs after that.
        diff_buf_win_enter = function(_, winid)
          vim.wo[winid].foldlevel = 99
        end,
      },
    }

    vim.keymap.set('n', '<leader>gdu', '<cmd>DiffviewOpen<CR>', { desc = '[G]it [D]iffview [U]ncommitted' })
    vim.keymap.set('n', '<leader>gdh', '<cmd>DiffviewOpen HEAD^!<CR>', { desc = '[G]it [D]iffview [H]EAD Commit' })
    vim.keymap.set('n', '<leader>gdc', '<cmd>DiffviewClose<CR>', { desc = '[G]it [D]iffview [C]lose' })
  end,
}
