return {
  'tpope/vim-fugitive',
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'fugitive',
      callback = function()
        -- Shrink the :Git status split to a slightly smaller height
        vim.cmd 'resize 25'
      end,
    })
  end,
}
