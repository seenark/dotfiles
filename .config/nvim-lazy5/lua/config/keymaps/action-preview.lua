local map = require("config.keymaps.mapFn")

-- code action menu
map("n", "<leader>.", function()
  require("actions-preview").code_actions()
end, { desc = "Open code action preview" })
