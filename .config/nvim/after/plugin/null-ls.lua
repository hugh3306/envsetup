
local formatting = require("null-ls").builtins.formatting

require("null-ls").setup({
  sources = {
    formatting.autopep8,
    formatting.prettier,
  },
  on_attach = function(client, bufnr)
    if client.name == "tsserver" or client.name == "rust_analyzer" or client.name == "pyright" then
      client.resolved_capabilities.document_formatting = false
    end
    -- Create a command `:Format` local to the LSP buffer
    vim.api.nvim_buf_create_user_command(bufnr, 'FormatNullLs', function(_)
      vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
  end,
})
