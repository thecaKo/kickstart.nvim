-- lua/plugins/lualine.lua
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'tokyonight', -- ou 'gruvbox', 'tokyonight', etc.
        section_separators = { '', '' },
        component_separators = { '', '' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      extensions = { 'fugitive', 'nvim-tree' },
    }
  end,
}
