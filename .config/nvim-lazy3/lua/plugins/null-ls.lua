return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.formatting.fish_indent,
          nls.builtins.diagnostics.fish,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.shfmt,
          ------- docker --------
          nls.builtins.diagnostics.hadolint,
          ------- docker --------
          ------- typescript --------
          -- nls.builtins.formatting.prettierd, -- as per lazyvim docs prettierd should not enabled in null-ls
          -- nls.builtins.diagnostics.eslint_d.with({
          --   diagnostics_format = "[eslint_d] #{m}\n(#{c})",
          -- }),

          ------- typescript --------
        },
      }
    end,
  },
}
