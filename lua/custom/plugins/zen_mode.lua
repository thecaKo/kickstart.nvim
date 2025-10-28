-- lua/plugins/zen_mode.lua
return {
  'folke/zen-mode.nvim',
  config = function()
    require('zen-mode').setup {
      window = {
        backdrop = 0.95,
        width = 0.75,
        height = 0.85,
        options = {
          signcolumn = 'no',
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
          foldcolumn = '0',
          list = false,
        },
      },
      plugins = {
        twilight = { enabled = true },
        gitsigns = { enabled = false },
        tmux = { enabled = false },
        todo = { enabled = false },
        kitty = { enabled = false },
      },
    }

    -- Atalho para ativar Zen Mode
    vim.api.nvim_set_keymap('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })
  end,
}
