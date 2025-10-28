return {
  'folke/trouble.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false, -- carrega imediatamente
  opts = {
    use_diagnostic_signs = true,
  },
  keys = {
    { '<leader>xx', '<cmd>TroubleToggle<cr>', desc = 'Toggle Trouble' },
    { '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>', desc = 'Document Diagnostics' },
    { '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>', desc = 'Workspace Diagnostics' },
  },
}
