local nvimtree = require("custom.configs.nvimtree")
local lspstuff = require("custom.configs.lsp-stuff")
local treesitter = require("custom.configs.treesitter")
local coding = require("custom.configs.coding")
local tools = require("custom.configs.tools")
local ui = require("custom.configs.ui")

---@type NvPluginSpec[]
local plugins = {
  -- Install a plugin
  lspstuff.LspConfig,
  lspstuff.mason,
  lspstuff.LspInlayHints,
  treesitter.treesitter,
  nvimtree.nvimtree,
  coding.emoji,
  coding.SymbolOutline,
  coding.CopilotCmp,
  coding.Copilot,
  tools.Diffview,
  ui.indentBlankline,
  ui.miniIndentScope,
  -- ui.navic,
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
}

return plugins
