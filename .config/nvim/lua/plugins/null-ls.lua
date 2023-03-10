return {
  "jose-elias-alvarez/null-ls.nvim",
  -- see https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#code-actions
  opts = function()
    local nls = require("null-ls")
    local formatting = nls.builtins.formatting
    local diagnostics = nls.builtins.diagnostics
    local code_actions = nls.builtins.code_actions

    return {
      sources = {

        -- webdev stuff
        -- formatting.prettierd.with({extra_args = {"--no-semi", "--single-qoute", "--jsx-single-qoute"}}),
        formatting.prettierd,
        diagnostics.eslint_d.with({
          diagnostics_format = "[eslintd] #{m}\n(#{c})",
        }),
        code_actions.eslint_d,

        -- lua
        formatting.stylua,

        -- rust
        formatting.rustfmt,

        -- yaml
        formatting.yamlfmt,

        -- shell
        -- formatting.shfmt,
        -- b.diagnostics.shellcheck.with { diagnostics_format = "[shellcheck] #{m} [#{c}]" },

        -- json
        diagnostics.jsonlint,
      },
    }
  end,
}
