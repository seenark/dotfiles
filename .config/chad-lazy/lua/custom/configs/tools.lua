local M = {}

M.Diffview = {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  config = true,
  keys = { { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "DiffView" } },
}

return M
