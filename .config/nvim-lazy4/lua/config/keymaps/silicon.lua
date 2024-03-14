local map = require("config.keymaps.mapFn")
-- Lsp
---- format code style
map("n", "<leader>cS", "<cmd>Silicon<cr>", { desc = "snap code to image" })
map("v", "<leader>cS", "<cmd>'<,'>Silicon<cr>", { desc = "snap code to image" })
