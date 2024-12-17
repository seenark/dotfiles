local map = require("config.keymaps.mapFn")

map(
  "n",
  "<leader>mm",
  "<cmd>TSJToggle<cr>",
  { desc = "toggle Split / Join node under cursor (split if one-line and join if multiline)" }
)
