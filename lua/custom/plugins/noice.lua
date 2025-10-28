return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  opts = {
    lsp = {
      progress = { enabled = false },
      hover = { enabled = false },
      signature = { enabled = false },
    },
    presets = {
      bottom_search = false, -- desativa a busca na parte de baixo
      command_palette = true, -- coloca a caixa de comando no centro
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,
    },
  },
}
