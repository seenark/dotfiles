return {
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    enabled = true,
    version = false,
    opts = {
      hooks = {
        pre = function()
          require("ts_context_commentstring.internal").update_commentstring({})
        end,
      },
      mappings = {
        -- comment = "<leader>/",
        -- comment_line = "<leader>/",
        comment = "÷",
        comment_line = "÷",
        -- textobject = "÷",
      },
    },
    -- config = function(_, opts)
    --   require("mini.comment").setup(opts)
    -- end,
  },
}
