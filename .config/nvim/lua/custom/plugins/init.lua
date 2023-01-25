local nvimtree = require "custom.plugins.nvimtree"
local treesitter = require "custom.plugins.treesitter"
local cmpConfig = require "custom.plugins.cmp"
local indentBlankline = require "custom.plugins.indent-blankline"

return {
  ["nvim-tree/nvim-tree.lua"] = {
    override_options = nvimtree,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "html-lsp",
        "css-lsp",
        "cssmodules-language-server",
        "dockerfile-language-server",
        "eslint_d",
        "jsonlint",
        "prettierd",
        -- "prisma-language-server",
        -- "prosemd-lsp", --[[ for markdown ]]
        -- "rome",
        -- "solang",
        -- "svelte-language-server",
        "tailwindcss-language-server",
        "yaml-language-server",
        "yamlfmt",
        "rust-analyzer",
        "rustfmt",
      },
    },
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = treesitter.treesitter,
  },
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "round",
        overriden_modules = nil,
      },
    },
  },
  ["hrsh7th/nvim-cmp"] = {
    override_options = cmpConfig,
  },
  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = indentBlankline,
  },
  -- ["numToStr/Comment.nvim"] = {
  --   override_options = {
  --     pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
  --     -- pre_hook = function(ctx)
  --     --   local U = require "Comment.utils"
  --     --
  --     --   local location = nil
  --     --   if ctx.ctype == U.ctype.block then
  --     --     location = require("ts_context_commentstring.utils").get_cursor_location()
  --     --   elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
  --     --     location = require("ts_context_commentstring.utils").get_visual_start_location()
  --     --   end
  --     --
  --     --   return require("ts_context_commentstring.internal").calculate_commentstring {
  --     --     key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
  --     --     location = location,
  --     --   }
  --     -- end,
  --   },
  -- },
  ---------------------------------
  -- install
  ---------------------------------
  ["b0o/schemastore.nvim"] = {},
  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  ["fedepujol/move.nvim"] = {}, -- move text by line or by block
  ["weilbith/nvim-code-action-menu"] = {}, -- code action in floating window, yes it colored -> key mapping is set in mapping file
  ["tpope/vim-surround"] = {},
  ["RRethy/vim-illuminate"] = {
    config = function()
      require("illuminate").configure {
        -- providers: provider used to get references in the buffer, ordered by priority
        providers = {
          "lsp",
          "treesitter",
          "regex",
        },
        -- delay: delay in milliseconds
        delay = 100,
      }
    end,
  },
  ["p00f/nvim-ts-rainbow"] = {},
  -- ["JoosepAlviste/nvim-ts-context-commentstring"] = {}
}
