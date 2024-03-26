return {
  'lewis6991/gitsigns.nvim',
  config = function()
    local gitsigns = require 'gitsigns'

    gitsigns.setup()

    vim.keymap.set('n', '<leader>gj', gitsigns.next_hunk, { desc = '[G]it Next Hunk' })
    vim.keymap.set('n', '<leader>gk', gitsigns.prev_hunk, { desc = '[G]it Previous Hunk' })
    vim.keymap.set('n', '<leader>gb', gitsigns.blame_line, { desc = '[G]it [B]lame' })
    vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, { desc = '[G]it [P]review Hunk' })
    vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk, { desc = '[G]it [r]eset Hunk' })
    vim.keymap.set('n', '<leader>gR', gitsigns.reset_buffer, { desc = '[G]it [R]eset Buffer' })
    vim.keymap.set('n', '<leader>gs', gitsigns.stage_hunk, { desc = '[G]it [S]tage Hunk' })
    vim.keymap.set('n', '<leader>gu', gitsigns.undo_stage_hunk, { desc = '[G]it [U]ndo Stage Hunk' })
    vim.keymap.set('n', '<leader>gd', function()
      gitsigns.diffthis 'HEAD'
    end, { desc = '[G]it [D]iff Head' })
  end,
}
