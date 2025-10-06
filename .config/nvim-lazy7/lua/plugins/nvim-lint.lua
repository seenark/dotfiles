return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      opts.linters_by_ft = {
        dockerfile = { "hadolint" },
        elixir = { "credo" },
        markdown = { "markdownlint-cli2" },
        terraform = { "terraform_validate" },
        tf = { "terraform_validate" },
      }

      opts.linters = {
        credo = {
          condition = function(ctx)
            return vim.fs.find({ ".credo.exs" }, { path = ctx.filename, upward = true })[1]
          end,
        },
      }
    end,
  },
}
