local map = require("config.keymaps.mapFn")

-- code action menu
-- map("n", "<leader>.", "<cmd>CodeActionMenu<cr>", { desc = "Open Code Action Menu" })

map("n", "<leader>.", function()
  require("actions-preview").code_actions()
end, { desc = "Open code action preview" })

-- config = function()
--   vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
-- end,
