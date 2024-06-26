return {
  {
    "rcarriga/nvim-notify",
    enabled = true,
    opts = {
      timeout = 1500,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
      render = "compact", -- minimal, simple, compact, wrapped-compact
      stages = "slide",
      top_down = false,
      fps = 25,
    },
  },
}
