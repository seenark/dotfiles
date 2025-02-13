return {
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    opts = {
      inlay_hints = {
        enabled = false,
      },
      -- make sure mason installs the server
      servers = {
        -- ts_ls = {
        --   enabled = false,
        -- },
        vtsls = {
          enabled = false,
          settings = {
            complete_function_calls = false,
          },
          init_options = {
            maxTsServerMemory = 8192, -- Memory limit in MB
          },
        },
      },
      -- setup = {
      --   vtsls = function(_, opts)
      --     -- copy typescript settings to javascript
      --     opts.settings.javascript =
      --       vim.tbl_deep_extend("force", {}, opts.settings.typescript, opts.settings.javascript or {})
      --   end,
      -- },
    },
    init = function()
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
