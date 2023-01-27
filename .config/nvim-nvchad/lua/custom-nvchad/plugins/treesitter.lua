local M = {}

-- require'nvim-treesitter.configs'.setup {
--   context_commentstring = {
--     enable = true
--   }
-- }

M.treesitter = {
  autotag = {
    enable = true,
  },
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "tsx",
    "rust",
    "toml",
    "yaml",
    "json",
    "jsonc",
  },
  auto_install = true,
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}

return M
