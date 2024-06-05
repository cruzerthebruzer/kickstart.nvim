return {
  'folke/trouble.nvim',
  keys = {
    {
      '<leader>xx',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics (Trouble)',
    },
    {
      '<leader>xX',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Buffer Diagnostics (Trouble)',
    },
    {
      '<leader>ds',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = '[D]ocument [S]ymbols (Trouble)',
    },
    {
      '<leader>ct',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = '[L]SP Definitions / references / ... ([T]rouble)',
    },
    {
      '<leader>xL',
      '<cmd>Trouble loclist toggle<cr>',
      desc = 'Location List (Trouble)',
    },
    {
      '<leader>xQ',
      '<cmd>Trouble qflist toggle<cr>',
      desc = 'Quickfix List (Trouble)',
    },
  },
  opts = {}, -- for default options, refer to the configuration section for custom setup.
}
