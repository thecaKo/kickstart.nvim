return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = { 'rafamadriz/friendly-snippets', 'onsails/lspkind-nvim' },

  opts = {
    keymap = { preset = 'super-tab' },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
      kind_icons = {
        enabled = true,
        show_text = false,
        width = 2,
      },
      highlights = {
        Pmenu = { bg = '#1e1e2e' },
        PmenuSel = { bg = '#313244', bold = true },
        PmenuThumb = { bg = '#7aa2f7' },
      },
    },

    completion = {
      max_view_entries = 5,
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
        window = { border = 'rounded' },
      },
      menu = {
        border = 'rounded',
        winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
      },
      ghost_text = { enabled = true, hl_group = 'Comment' },
      accept = { auto_brackets = { enabled = true } },
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lsp = { name = 'LSP', max_items = 3, priority = 1000 },
        path = { name = 'Path', max_items = 2, priority = 400 },
        snippets = { name = 'Snippets', max_items = 2, priority = 300 },
        buffer = { name = 'Buffer', max_items = 0, priority = 200, keyword_length = 3 },
      },
    },

    fuzzy = { implementation = 'prefer_rust_with_warning' },
    performance = { debounce = 60, throttle = 40, fetch_timeout = 100 },

    formatting = {
      format = function(entry, vim_item)
        local ok, lspkind = pcall(require, 'lspkind')
        if ok and lspkind and lspkind.symbolic then
          vim_item.kind = lspkind.symbolic(vim_item.kind, { with_text = true })
        end
        return vim_item
      end,
    },
  },

  opts_extend = { 'sources.default' },
}
