local M = {}

M.mason = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "shellcheck",
      "shfmt",
      "html-lsp",
      "css-lsp",
      "cssmodules-language-server",
      "dockerfile-language-server",
      "eslint_d",
      "jsonlint",
      "prettierd",
      "prisma-language-server",
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
}

M.LspConfig = {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- format & linting
    M.NullLs,
  },
  config = function()
    require("plugins.configs.lspconfig")
    require("custom.configs.lspconfig")
  end, -- Override to setup mason-lspconfig
  opts = {
    servers = {
      astro = {},
      ansiblels = {},
      bashls = {},
      clangd = {},
      denols = {},
      jsonls = {
        -- lazy-load schemastore when needed
        on_new_config = function(new_config)
          new_config.settings.json.schemas = new_config.settings.json.schemas or {}
          vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
        end,
        settings = {
          json = {
            format = {
              enable = true,
            },
            validate = { enable = true },
          },
        },
      },
      html = {},
      cssls = {},
      dockerls = {},
      tsserver = {
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "all", -- "none" | "literals" | "all"
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
        },
      },
      svelte = {},
      gopls = {},
      marksman = {},
      -- pyright = {},
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            procMacro = { enable = true },
            cargo = { allFeatures = true },
            checkOnSave = {
              command = "clippy",
              extraArgs = { "--no-deps" },
            },
          },
        },
      },
      yamlls = {
        settings = {
          yaml = {
            keyOrdering = false,
          },
        },
      },
      lua_ls = {
        -- cmd = { "/home/folke/projects/lua-language-server/bin/lua-language-server" },
        single_file_support = true,
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
            },
            completion = {
              workspaceWord = true,
              callSnippet = "Both",
            },
            misc = {
              parameters = {
                "--log-level=trace",
              },
            },
            diagnostics = {
              -- enable = false,
              groupSeverity = {
                strong = "Warning",
                strict = "Warning",
              },
              groupFileStatus = {
                ["ambiguity"] = "Opened",
                ["await"] = "Opened",
                ["codestyle"] = "None",
                ["duplicate"] = "Opened",
                ["global"] = "Opened",
                ["luadoc"] = "Opened",
                ["redefined"] = "Opened",
                ["strict"] = "Opened",
                ["strong"] = "Opened",
                ["type-check"] = "Opened",
                ["unbalanced"] = "Opened",
                ["unused"] = "Opened",
              },
              unusedLocalExclude = { "_*" },
            },
            format = {
              enable = false,
              defaultConfig = {
                indent_style = "space",
                indent_size = "2",
                continuation_indent_size = "2",
              },
            },
          },
        },
      },
      teal_ls = {},
      vimls = {},
      tailwindcss = {},
    },
    setup = {},
    -- setup = {
    --   tsserver = function(_, opts)
    --     require("lazyvim.util").on_attach(function(client, buffer)
    --       if client.name == "tsserver" then
    --         -- stylua: ignore
    --         vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
    --         vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
    --       end
    --     end)
    --     require("typescript").setup({ server = opts })
    --     return true
    --   end,
    -- },
  },
}

M.NullLs = {
  -- see https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#code-actions
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
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
        diagnostics.luacheck.with({
          condition = function(utils)
            return utils.root_has_file(".luacheckrc")
          end,
        }),

        -- rust
        formatting.rustfmt,

        -- yaml
        formatting.yamlfmt,

        -- shell
        -- formatting.shfmt,
        -- b.diagnostics.shellcheck.with { diagnostics_format = "[shellcheck] #{m} [#{c}]" },

        -- json
        diagnostics.jsonlint,

        -- markdown
        diagnostics.markdownlint,

        -- toml
        diagnostics.selene.with({
          condition = function(utils)
            return utils.root_has_file("selene.toml")
          end,
        }),
      },
    }
  end,
}

M.LspInlayHints = {
  "lvimuser/lsp-inlayhints.nvim",
  event = "LspAttach",
  opts = {},
  config = function(_, opts)
    require("lsp-inlayhints").setup(opts)
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("LspAttach_inlayhints", {}),
      callback = function(args)
        if not (args.data and args.data.client_id) then
          return
        end
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        require("lsp-inlayhints").on_attach(client, args.buf, true)
      end,
    })
  end,
}

return M
