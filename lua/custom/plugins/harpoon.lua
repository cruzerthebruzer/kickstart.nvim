return {
  'ThePrimeagen/harpoon',
  config = function()
    require('harpoon').setup {
      save_on_toggle = true,
      save_on_change = true,
      enter_on_sendcmd = false,
      menu = {
        width = 100,
      },
    }
  end,

  vim.keymap.set('n', '<leader>h', ':NvimTreeToggle<CR>'),
}
