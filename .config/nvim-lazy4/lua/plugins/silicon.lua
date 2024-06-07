return {
  {
    -- make snap-shot the highlighted code
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup({
        -- Configuration here, or leave empty to use defaults
        font = "JetBrains Mono=34;Noto Color Emoji=34",
        theme = "Monokai Extended",
        background = "#94e2d5",
        pad_horiz = 20,
        pad_vert = 20,
        to_clipboard = true,
        window_title = function()
          return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
        end,
      })
    end,
  },
}
