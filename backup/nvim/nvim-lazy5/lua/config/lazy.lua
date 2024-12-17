local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Alpha dashboard                                         │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.ui.alpha" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Telescope                                               │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.editor.telescope" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ codeium                                                 │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.coding.codeium" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Yanky                                                   │
    -- ╰─────────────────────────────────────────────────────────╯

    { import = "lazyvim.plugins.extras.coding.yanky" },

    ----- FZF -----
    -- { import = "lazyvim.plugins.extras.editor.fzf" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ illuminate                                              │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.editor.illuminate" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ inc-rename                                              │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.editor.inc-rename" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Leap                                                    │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.editor.leap" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Mini diff                                               │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.editor.mini-diff" },
    { import = "lazyvim.plugins.extras.editor.mini-move" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Outline                                                 │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.editor.outline" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Typescript                                              │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.linting.eslint" },
    -- { import = "lazyvim.plugins.extras.formatting.prettier" },
    { import = "lazyvim.plugins.extras.lang.json" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Markdown                                                │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.markdown" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Svelte                                                  │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.svelte" },
    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Vue                                                     │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.vue" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Astro                                                   │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.astro" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Tailwind                                                │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.tailwind" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Prisma                                                  │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.prisma" },
    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Docker                                                  │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.docker" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Elixir                                                  │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.elixir" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Git                                                     │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.git" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Gleam                                                   │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.gleam" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Go                                                      │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.go" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Helm                                                    │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.helm" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Nix                                                     │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.nix" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Rust                                                    │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "lazyvim.plugins.extras.lang.toml" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Scala                                                   │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.scala" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ SQL                                                     │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.sql" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Yaml                                                    │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.lang.yaml" },

    { import = "lazyvim.plugins.extras.lsp.none-ls" },

    { import = "lazyvim.plugins.extras.ui.mini-indentscope" },

    { import = "lazyvim.plugins.extras.ui.treesitter-context" },

    { import = "lazyvim.plugins.extras.ui.treesitter-rewrite" },

    { import = "lazyvim.plugins.extras.util.gitui" },

    { import = "lazyvim.plugins.extras.coding.mini-comment" },

    { import = "lazyvim.plugins.extras.coding.mini-surround" },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Neogen                                                  │
    -- ╰─────────────────────────────────────────────────────────╯
    { import = "lazyvim.plugins.extras.coding.neogen" },

    -- import any extras modules here

    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
