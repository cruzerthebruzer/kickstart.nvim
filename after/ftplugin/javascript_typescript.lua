local tsRemoveUnused = function()
  vim.lsp.buf.code_action {
    apply = true,
    context = {
      only = { 'source.removeUnused.ts' },
      diagnostics = {},
    },
  }
end

local tsOrganizeImports = function()
  vim.lsp.buf.code_action {
    apply = true,
    context = {
      only = { 'source.organizeImports.ts' },
      diagnostics = {},
    },
  }
end

local group = vim.api.nvim_create_augroup('JsTsSettings', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'javascript', 'typescript', 'typescriptreact', 'javascriptreact' },
  group = group,
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    map('<leader>cu', tsRemoveUnused, '[C]ode Remove [U]nused')
    map('<leader>co', tsOrganizeImports, '[C]ode [O]rganize Imports')
  end,
})

print 'Hello!'
