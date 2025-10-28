return {
  'nvim-mini/mini.icons',
  lazy = true,
  opts = {
    style = 'glyph', -- ou 'ascii'
    file = {
      ['.git'] = { glyph = '', hl = 'MiniIconsGit' },
      ['.keep'] = { glyph = '󰊢', hl = 'MiniIconsGrey' },
    },
    filetype = {
      markdown = { glyph = '', hl = 'MiniIconsMarkdown' },
    },
  },
  init = function()
    package.preload['nvim-web-devicons'] = function()
      require('mini.icons').mock_nvim_web_devicons()
      return package.loaded['nvim-web-devicons']
    end
  end,
}
