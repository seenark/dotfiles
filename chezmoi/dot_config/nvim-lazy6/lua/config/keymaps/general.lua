local map = require("config.keymaps.mapFn")

map("n", "gl", "$", { desc = "go to end of line" })
map("v", "gl", "$", { desc = "go to end of line" })
map("n", "gh", "_", { desc = "go to begin of line" })
map("v", "gh", "_", { desc = "go to begin of line" })
map("n", "ge", "G", { desc = "go to last line" })
map("x", "ge", "G", { desc = "go to last line" })

-- redo
map("n", "U", "<C-r>", { desc = "redo" })

-- copy and paste
map("n", "<leader>%", "<cmd>%y+<cr>", { desc = "copy whole file" })

map("n", "<leader>y", '"+y', { desc = "Copy to clipboard" })
map("x", "<leader>y", '"+y', { desc = "Copy to clipboard" })

map("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })
map("x", "<leader>fp", '"+p', { desc = "Paste from clipboard" })

map("n", "<leader>fp", ':call setreg("+", expand("%:.") .. ":" .. line("."))<CR>', { desc = "Copy Relative Path" })
-- when highlight text and paste the yanked text this will not yank the replaced text
map("x", "p", '"_dP')
-- map("x", "p", [["_dP]])
-- map("x", "p", '"0P')

-- map("x", "p", "P")
-- map("x", "P", "p")
