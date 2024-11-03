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
        comment = "÷",
        comment_line = "÷",
      },
    },
  },
}
