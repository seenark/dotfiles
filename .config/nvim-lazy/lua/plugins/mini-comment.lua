return {
  "echasnovski/mini.comment",
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
    },
  },
}
