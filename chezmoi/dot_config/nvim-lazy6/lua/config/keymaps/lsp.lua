local map = require("config.keymaps.mapFn")
-- Lsp
---- format code style
map("n", "==", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "format code" })
