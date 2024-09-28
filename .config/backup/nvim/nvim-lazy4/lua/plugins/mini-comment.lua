return {
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    enabled = true,
    version = false,
    opts = {
      options = {
        custom_commentstring = function()
          return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end,
      },
      mappings = {
        comment = "÷",
        comment_line = "÷",
        comment_visual = "÷",
      },
    },
  },
}
