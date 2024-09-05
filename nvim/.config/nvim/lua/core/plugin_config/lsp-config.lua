require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls"}
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {noremap = true, silent = true, desc = "Rename function"})

  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {noremap = true, silent = true, desc = "Code action"})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {noremap = true, silent = true, desc ="Definitions for symbol"})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {noremap = true, silent = true, desc = "Implementations for symbol"})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {noremap = true, silent = true, desc = "List all references to"})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {noremap = true, silent = true, desc = "Display information on hover"})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").clangd.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").jedi_language_server.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

