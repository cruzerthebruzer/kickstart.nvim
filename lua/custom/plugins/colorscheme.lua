return {
  {
    'bluz71/vim-moonfly-colors',
    init = function()
      -- vim.cmd.colorscheme 'moonfly'
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    init = function()
      -- red
    end,
  },
  {
    'sainnhe/edge',
    init = function()
      -- inf amount of red lol
      -- vim.cmd.colorscheme 'edge'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    init = function()
      -- pretty good uses red a decent amount?
      -- vim.cmd.colorscheme 'kanagawa'
    end,
  },
  {
    'navarasu/onedark.nvim',
    init = function()
      -- not bad some red probably need onedarker
      require('onedark').setup {
        style = 'darker',
        diagnostics = {
          darker = true,
          undercurl = true,
          background = true,
        },

        toggle_style_key = '<leader>ts', -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
        colors = {
          bright_orange = '#ff8800', -- define a new color
          green = '#00ffaa', -- redefine an existing color
        },
        -- highlights = {
        --   ['@keyword'] = {},
        --   ['@string'] = {},
        --   ['@function'] = {},
        --   ['@function.builtin'] = {},
        -- },
      }

      vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    'sainnhe/everforest',
    init = function()
      -- nah
      -- vim.cmd.colorscheme 'everforest'
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    init = function()
      -- vim.cmd.colorscheme 'rose-pine'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function() end,
    config = function()
      require('catppuccin').setup {
        flavour = 'auto', -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = 'latte',
          dark = 'mocha',
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = 'dark',
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { 'italic' }, -- Change the style of comments
          conditionals = { 'italic' },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      }
    end,
  },
  {
    'Mofiqul/dracula.nvim',
    priority = 1000,
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'dracula'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
    config = function()
      require('dracula').setup {
        -- customize dracula color palette
        colors = {
          bg = '#282A36',
          fg = '#F8F8F2',
          selection = '#44475A',
          comment = '#6272A4',
          red = '#FF5555',
          orange = '#FFB86C',
          yellow = '#F1FA8C',
          green = '#50fa7b',
          purple = '#BD93F9',
          cyan = '#8BE9FD',
          pink = '#FF79C6',
          bright_red = '#FF6E6E',
          bright_green = '#69FF94',
          bright_yellow = '#FFFFA5',
          bright_blue = '#D6ACFF',
          bright_magenta = '#FF92DF',
          bright_cyan = '#A4FFFF',
          bright_white = '#FFFFFF',
          menu = '#21222C',
          visual = '#000000', -- changed
          gutter_fg = '#4B5263',
          nontext = '#3B4048',
          white = '#ABB2BF',
          black = '#191A21',
        },
        -- show the '~' characters after the end of buffers
        show_end_of_buffer = false, -- default false
        -- use transparent background
        transparent_bg = false, -- default false
        -- set custom lualine background color
        lualine_bg_color = '#44475a', -- default nil
        -- set italic comment
        italic_comment = true, -- default false
        -- overrides the default highlights with table see `:h synIDattr`
        overrides = {},
        -- You can use overrides as table like this
        -- overrides = {
        --   NonText = { fg = "white" }, -- set NonText fg to white
        --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
        --   Nothing = {} -- clear highlight of Nothing
        -- },
        -- Or you can also use it like a function to get color from theme
        -- overrides = function (colors)
        --   return {
        --     NonText = { fg = colors.white }, -- set NonText fg to white of theme
        --   }
        -- end,
      }
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    init = function()
      -- vim.cmd.colorscheme 'carbonfox'
    end,
  },
  {
    'folke/tokyonight.nvim',
    init = function()
      -- vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
}
