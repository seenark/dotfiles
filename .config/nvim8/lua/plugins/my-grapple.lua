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
      { "<leader>gpn", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
      { "<leader>gpp", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
      { "<leader>gpC", "<cmd>Grapple prune<cr>", desc = "Grapple Prune" },
      { "<leader>gpR", "<cmd>Grapple reset<cr>", desc = "Grapple Reset" },
      { "<leader>gpU", "<cmd>Grapple unload<cr>", desc = "Grapple Unload" },
    },
  },
}
