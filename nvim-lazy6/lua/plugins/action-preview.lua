return {
  {
    "aznhe21/actions-preview.nvim",
    keys = {
      {
        "<leader>.",
        function()
          require("actions-preview").code_actions()
        end,
        mode = { "n" },
        desc = "Open code action preview",
      },
    },
  },
}
