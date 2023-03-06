local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'lua_ls'
})


vim.lsp.handlers["textDocument/publishDiagnostics"] =
	vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = true })


-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()


local cmp = require('cmp')

lsp.setup_nvim_cmp({
  sources = {
    -- This one provides the data from copilot.
    {name = 'copilot'},

    --- These are the default sources for lsp-zero
    {name = 'path'},
    {name = 'nvim_lsp', keyword_length = 3},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
  },
  mapping = lsp.defaults.cmp_mappings({
    ['<CR>'] = cmp.mapping.confirm({
      -- documentation says this is important.
      -- I don't know why.
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    })
  })
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

