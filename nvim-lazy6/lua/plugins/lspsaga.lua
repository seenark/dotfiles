return {
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup({
        ui = {
          -- This option only works in Neovim 0.9
          title = true,
          -- Border type can be single, double, rounded, solid, shadow.
          border = "rounded",
          winblend = 0,
          expand = "",
          collapse = "",
          code_action = "💡",
          incoming = " ",
          outgoing = " ",
          hover = "  ",
          kind = {},
        },
      })
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      --Please make sure you install markdown and markdown_inline parser
      { "nvim-treesitter/nvim-treesitter" },
    },
    keys = {
      {
        "<leader>k",
        "<cmd>Lspsaga hover_doc<CR>",
        mode = { "n" },
        desc = "LspSaga hover",
      },
      {
        "K",
        "<cmd>Lspsaga hover_doc<CR>",
        mode = { "n" },
        desc = "LspSaga hover",
      },
      {
        "<leader>cs",
        "<cmd>Lspsaga outline<CR>",
        mode = { "n" },
        desc = "LspSaga outline",
      },
      {
        "[d",
        "<cmd>Lspsaga diagnostic_jump_prev<CR>",
        mode = { "n" },
        desc = "LspSaga diagnostic jump prev",
      },
      {
        "<leader>cdp",
        "<cmd>Lspsaga diagnostic_jump_prev<CR>",
        mode = "n",
        desc = "LspSaga diagnostic jump prev",
      },
      {
        "]d",
        "<cmd>Lspsaga diagnostic_jump_next<CR>",
        mode = "n",
        desc = "LspSaga diagnostic jump next",
      },
      {
        "<leader>cdn",
        "<cmd>Lspsaga diagnostic_jump_next<CR>",
        mode = "n",
        desc = "LspSaga diagnostic jump next",
      },
      {
        "<leader>cdb",
        "<cmd>Lspsaga show_buf_diagnostics<CR>",
        mode = "n",
        desc = "LspSaga Show buffer diagnostics",
      },
      {
        "[e",
        function()
          require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
        end,
        mode = "n",
        desc = "Diagnostic jump with filters such as only jumping prev to an error",
      },
      {
        "]e",
        function()
          require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
        end,
        mode = "n",
        desc = "Diagnostic jump with filters such as only jumping next to an error",
      },
      {
        mode = "n",
        "<leader>cdw",
        "<cmd>Lspsaga show_workspace_diagnostics<CR>",
        desc = "Show workspace diagnostics",
      },
    },
  },
}
