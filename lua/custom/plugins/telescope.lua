return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzf-native.nvim', -- para busca rápida
  },
  config = function()
    local telescope = require 'telescope'
    local actions = require 'telescope.actions'

    telescope.setup {
      defaults = {
        prompt_prefix = '🔍 ',
        selection_caret = '➤ ',
        path_display = { 'smart' },
        mappings = {
          i = {
            ['<esc>'] = actions.close,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'smart_case',
        },
      },
    }

    telescope.load_extension 'fzf'

    -- Atalhos globais
    local map = vim.keymap.set
    map('n', '<leader>g', '<cmd>Telescope find_files<CR>', { desc = 'Find Files' })
  end,
}
