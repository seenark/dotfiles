local map = require("config.keymaps.mapFn")

map("n", "<leader>-", function()
  require("tfm").open()
end, { desc = "TFM" })
