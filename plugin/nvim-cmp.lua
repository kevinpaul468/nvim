local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ['<Tab>'] = cmp.mapping.select_next_item()
      -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
      {name = "path"},
      { name = 'buffer' },
    })
  })

  -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' },
    }, {
      { name = 'buffer' },
    })
 })
require("cmp_git").setup()

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

  require("luasnip.loaders.from_vscode").lazy_load()

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }

require('lspconfig')['ts_ls'].setup {
    capabilities = capabilities
  }

  require'lspconfig'.lua_ls.setup{
    capabilities = capabilities
  }


  local lspconfig = require('lspconfig')

  lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',  -- Neovim uses LuaJIT
        path = vim.split(package.path, ';'),  -- Add runtime paths
      },
      diagnostics = {
        globals = {'vim'},  -- Add vim as a global variable
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),  -- This ensures LSP is aware of Neovim's runtime
      },
    },
  },
})


require('lspconfig')['yamlls'].setup {
    capabilities = capabilities
  }


--   lspconfig.clangd.setup({
--     cmd = {"clangd", "--compile-commands-dir=" .. vim.loop.cwd() },
--     filetypes = { "c", "cpp", "objc", "objcpp", "arduino" },
--     init_options = {
--         usePlaceholders = true,
--         completeUnimported = true,
--     },
-- })
--
