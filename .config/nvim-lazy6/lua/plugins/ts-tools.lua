return {
  {
    "pmizio/typescript-tools.nvim",
    enabled = true,
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      settings = {
        -- spawn additional tsserver instance to calculate diagnostics on it
        separate_diagnostic_server = true,
        -- "change"|"insert_leave" determine when the client asks the server about diagnostic
        publish_diagnostic_on = "insert_leave",
        tsserver_file_preferences = {
          includeInlayParameterNameHints = "all",
          includeInlayVariableTypeHints = true,
        },
        tsserver_plugins = {
          "@effect/language-service",
          -- for TypeScript v4.9+
          -- "@styled/typescript-styled-plugin",
          -- or for older TypeScript versions
          -- "typescript-styled-plugin",
        },
        complete_function_calls = false,
        code_lens = "off",
        disable_member_code_lens = true,
      },
    },
    dev = false,
  },
}
