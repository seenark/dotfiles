return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        elixirls = {
          -- cmd = { "elixir-ls" },
        },
        -- oxlint = {},
      },
    },
    setup = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "[d", false }
      keys[#keys + 1] = { "]d", false }
      keys[#keys + 1] = { "[e", false }
      keys[#keys + 1] = { "]e", false }
    end,
  },
}
