-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- check it out the servers list https://github.com/williamboman/mason-lspconfig.nvim
local servers = {
  "html",
  "cssls",
  "cssmodules_ls",
  "tsserver",
  "rust_analyzer",
  "dockerls",
  "jsonls",
  "yamlls",
  "eslint",
  "prosemd_lsp",--[[ for markdown ]]
  "prismals",
  "rome",
  "svelte",
  "solang",
  "svelte",
  "taplo" --[[ for tomal ]],
  "tailwindcss",


}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if lsp == "jsonls" then
    -- capabilities.textDocument.completion.completionItem.snippetSupport = true
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        json = {
          schemas = require("schemastore").json.schemas {
            -- select = {
            --   ".eslintrc",
            --   "package.json",
            --   "ts"
            -- },
          },
          validate = { enable = true },
        },
      },
    }
  end

  -- if lsp == "prosemd_lsp" then
  --   lspconfig[lsp] = {
  --     default_config = {
  --       -- Update the path to prosemd-lsp
  --       cmd = { "/usr/local/bin/prosemd-lsp", "--stdio" },
  --       filetypes = { "markdown" },
  --       root_dir = function(fname)
  --         return lsp_util.find_git_ancestor(fname) or vim.fn.getcwd()
  --       end,
  --       settings = {},
  --     },
  --   }
  -- end
end
