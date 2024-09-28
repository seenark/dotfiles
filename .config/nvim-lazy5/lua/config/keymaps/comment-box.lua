local Util = require("lazyvim.util")

local map = require("config.keymaps.mapFn")

--          ╭─────────────────────────────────────────────────────────╮
--          │                    title with border                    │
--          ╰─────────────────────────────────────────────────────────╯
map("n", "<leader>cbb", "<cmd>CBccbox<cr>", { desc = "CommentBox Titiles with borders" })
map("v", "<leader>cbb", "<cmd>CBccbox<cr>", { desc = "CommentBox Titiles with borders" })

-- ── Named parts ─────────────────────────────────────────────────────
map("n", "<leader>cbn", "<cmd>CBllline<cr>", { desc = "CommentBox Named parts" })
map("v", "<leader>cbn", "<cmd>CBllline<cr>", { desc = "CommentBox Named parts" })

-- Simple line
-- ──────────────────────────────────────────────────────────────────────
map("n", "<leader>cbl", "<cmd>CBline<cr>", { desc = "CommentBox Simple line" })
map("v", "<leader>cbl", "<cmd>CBline<cr>", { desc = "CommentBox Simple line" })

-- ╭─────────────────────────────────────────────────────────╮
-- │ Marked                                                  │
-- ╰─────────────────────────────────────────────────────────╯
map("n", "<leader>cbm", "<cmd>CBllbox<cr>", { desc = "CommentBox Marked comments" })
map("v", "<leader>cbm", "<cmd>CBllbox<cr>", { desc = "CommentBox Marked comments" })

-- ╭─────────────────────────────────────────────────────────╮
-- │ Remove                                                  │
-- ╰─────────────────────────────────────────────────────────╯

map("n", "<leader>cbd", "<cmd>CBd<cr>", { desc = "CommentBox Remove" })
map("v", "<leader>cbd", "<cmd>CBd<cr>", { desc = "CommentBox Remove" })

-- ╭─────────────────────────────────────────────────────────╮
-- │ catalog                                                 │
-- ╰─────────────────────────────────────────────────────────╯

map("n", "<leader>cbc", "<cmd>CBcatalog<cr>", { desc = "CommentBox Catalog" })

--          ┌─────────────────────────────────────────────────────────┐
--                                horizontal
--          └─────────────────────────────────────────────────────────┘
map("n", "<leader>cbh", "<cmd>CBccbox20<cr>", { desc = "CommentBox top and bottom frames" })
map("v", "<leader>cbh", "<cmd>CBccbox20<cr>", { desc = "CommentBox top and bottom frames" })

map("n", "<leader>cbi", function()
  vim.cmd("normal! yyp")
  vim.cmd("normal! k")
  vim.cmd("CBllline2")
  vim.cmd("normal! j")
  vim.cmd("CBllline3")
  vim.cmd("normal! O")
end, { desc = "CommentBox top and bottom in-line style" })
