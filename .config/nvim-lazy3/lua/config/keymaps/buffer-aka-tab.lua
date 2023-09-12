local Util = require("lazyvim.util")

local map = require("config.keymaps.mapFn")

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "gp", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "gn", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "<C-x>", "<cmd>bdelete<cr>", { desc = "close buffer" })
else
  map("n", "gp", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "gn", "<cmd>bnext<cr>", { desc = "Next buffer" })
  map("n", "<C-x>", "<cmd>bdelete<cr>", { desc = "close buffer" })
end
