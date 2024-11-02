local map = require("config.keymaps.mapFn")

-- code action menu
map("n", "<leader>.", "<cmd>CodeActionMenu<cr>", { desc = "Open Code Action Menu" })
