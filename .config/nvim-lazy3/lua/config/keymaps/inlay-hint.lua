local map = require("config.keymaps.mapFn")

map("n", "<leader>uh", function()
  vim.lsp.inlay_hint(0, nil)
end, { desc = "Toggle inlay hint" })
