local swenv = require("swenv");

swenv.setup({
  auto_create_venv = false,
  post_set_venv = function(venv)
   vim.cmd.LspRestart()
   if venv and venv.name then
    print("Swenv: Activated Venv '".. venv.name .. "'. LSP restarted.")
   end
  end,
  auto_create_venv_dir = ".venv",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {"python"},
  callback = function()
    require('swenv.api').auto_venv()
  end,
})

vim.lsp.config('pyright', {
    on_attach = function(client, bufnr)
        -- Your on_attach function remains here.
        -- Note: Many modern configs now move keymaps into an LspAttach autocommand.
    end,
    -- Any other Pyright-specific settings go here
})

vim.lsp.enable('pyright')
