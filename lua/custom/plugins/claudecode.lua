return {
  'coder/claudecode.nvim',
  opts = {
    terminal = {
      provider = 'native',
      split_side = 'right',
      split_width_percentage = 0.35,
    },
  },
  keys = {
    { '<leader>a', nil, desc = '[A]I / Claude Code' },
    { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = '[A]I Toggle [C]laude' },
    { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = '[A]I [F]ocus Claude' },
    { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = '[A]I [R]esume Claude' },
    { '<leader>aC', '<cmd>ClaudeCode --continue<cr>', desc = '[A]I [C]ontinue Claude' },
    { '<leader>am', '<cmd>ClaudeCodeSelectModel<cr>', desc = '[A]I Select [M]odel' },
    { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = '[A]I Add [B]uffer' },
    { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = '[A]I [S]end Selection' },
    { '<leader>as', '<cmd>ClaudeCodeTreeAdd<cr>', desc = '[A]I Add File', ft = { 'NvimTree', 'oil' } },
    { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = '[A]I [A]ccept Diff' },
    { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = '[A]I [D]eny Diff' },
  },
}
