return {
  {
    "cbochs/grapple.nvim",
    opts = {
      scope = "git", -- also try out "git_branch"
      icons = true,
      quick_select = "123456789",
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = "Grapple",
    keys = {
      { "<c-g>", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
      { ";", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
      { "<leader>mn", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
      { "<leader>mp", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
      { "<leader>mC", "<cmd>Grapple prune<cr>", desc = "Grapple Prune" },
      { "<leader>mR", "<cmd>Grapple reset<cr>", desc = "Grapple Reset" },
      { "<leader>mU", "<cmd>Grapple unload<cr>", desc = "Grapple Unload" },
    },
  },
}
