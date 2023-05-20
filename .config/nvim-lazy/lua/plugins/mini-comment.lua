return {
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    enabled = true,
    version = "*",
    opts = {
      hooks = {
        pre = function()
          print("comment call pre")
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
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end,
  },
  {
    "numToStr/Comment.nvim",
    enabled = false,
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    opts = {
      toggler = {
        ---Line-comment toggle keymap
        line = "÷",
        ---Block-comment toggle keymap
        block = "¿",
      },
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    },
  },
}
