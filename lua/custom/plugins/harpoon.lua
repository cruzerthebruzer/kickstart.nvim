return {
  'ThePrimeagen/harpoon',
  config = function()
    local harpoon = require 'harpoon'

    harpoon.setup {
      save_on_toggle = true,
      save_on_change = true,
      enter_on_sendcmd = false,
      menu = {
        width = 100,
      },
    }

    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = '[H]arpoon [A]dd File' })
    vim.keymap.set('n', '<leader>hm', ui.toggle_quick_menu, { desc = '[H]arpoon Quick [M]enu' })

    vim.keymap.set('n', '<leader>h1', function()
      ui.nav_file(1)
    end, { desc = '[H]arpoon File [1]' })

    vim.keymap.set('n', '<leader>h2', function()
      ui.nav_file(2)
    end, { desc = '[H]arpoon File [2]' })

    vim.keymap.set('n', '<leader>h3', function()
      ui.nav_file(3)
    end, { desc = '[H]arpoon File [3]' })

    vim.keymap.set('n', '<leader>h4', function()
      ui.nav_file(4)
    end, { desc = '[H]arpoon File [4]' })

    vim.keymap.set('n', '<leader>h5', function()
      ui.nav_file(5)
    end, { desc = '[H]arpoon File [5]' })
  end,
}
