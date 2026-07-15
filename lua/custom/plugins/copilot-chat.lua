return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    { 'zbirenbaum/copilot.lua' }, -- Required to have GitHub Copilot access
    { 'nvim-lua/plenary.nvim' },
  },
  opts = {
    model = 'claude-4.6-opus',
    show_help = true,
  },
  cmd = { 'CopilotChat', 'CopilotChatToggle' },
  keys = {
    { '<leader>cc', '<cmd>CopilotChat<cr>', desc = '[C]ode Copilot [C]hat' },
    { '<leader>ce', '<cmd>CopilotChatExplain<cr>', desc = '[C]ode [E]xplain' },
  },
}
