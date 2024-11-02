return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      -- { name = "codeium" }
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 6,
      })
    end,
  },
}
