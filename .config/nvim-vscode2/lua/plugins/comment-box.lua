return {
  {
    "LudoPinelli/comment-box.nvim",
    vscode = true,
    keys = function()
      --          ╭─────────────────────────────────────────────────────────╮
      --          │                    box with borders                     │
      --          ╰─────────────────────────────────────────────────────────╯
      return {
        {
          "<leader>cbb",
          "<cmd>CBccbox<cr>",
          mode = { "n", "v" },
          desc = "CommentBox Titiles with borders",
        },
        -- -- ── Named parts ─────────────────────────────────────────────────────
        {
          "<leader>cbn",
          "<cmd>CBllline<cr>",
          mode = { "n", "v" },
          desc = "CommentBox Named parts",
        },
        -- -- Simple line
        -- -- ──────────────────────────────────────────────────────────────────────
        {
          "<leader>cbl",
          "<cmd>CBline<cr>",
          mode = { "n", "v" },
          desc = "CommentBox Simple line",
        },

        -- -- ╭─────────────────────────────────────────────────────────╮
        -- -- │ Marked                                                  │
        -- -- ╰─────────────────────────────────────────────────────────╯
        {
          "<leader>cbm",
          "<cmd>CBllbox<cr>",
          mode = { "n", "v" },
          desc = "CommentBox Marked comments",
        },

        -- -- ╭─────────────────────────────────────────────────────────╮
        -- -- │ Remove                                                  │
        -- -- ╰─────────────────────────────────────────────────────────╯
        --
        {
          "<leader>cbd",
          "<cmd>CBd<cr>",
          mode = { "n", "v" },
          desc = "CommentBox Remove",
        },
        -- -- ╭─────────────────────────────────────────────────────────╮
        -- -- │ catalog                                                 │
        -- -- ╰─────────────────────────────────────────────────────────╯
        --
        {
          "<leader>cbc",
          "<cmd>CBcatalog<cr>",
          mode = { "n" },
          desc = "CommentBox Catalog",
        },
        -- --          ┌─────────────────────────────────────────────────────────┐
        -- --                                horizontal
        -- --          └─────────────────────────────────────────────────────────┘
        {
          "<leader>cbh",
          "<cmd>CBccbox20<cr>",
          mode = { "n", "v" },
          desc = "CommentBox top and bottom frames",
        },
        {
          "<leader>cbi",
          function()
            vim.cmd("normal! yyp")
            vim.cmd("normal! k")
            vim.cmd("CBllline2")
            vim.cmd("normal! j")
            vim.cmd("CBllline3")
            vim.cmd("normal! O")
          end,
          mode = { "n" },
          desc = "CommentBox top and bottom in-line style",
        },
      }
    end,
  },
}
