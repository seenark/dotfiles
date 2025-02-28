return {
  {
    "L3MON4D3/LuaSnip",
    enabled = true,
    opts = function()
      local ls = require("luasnip")

      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node
      local f = ls.function_node

      local function clipboard()
        return vim.fn.getreg("+")
      end

      -- Custom snippets
      -- the "all" after ls.add_snippets("all" is the filetype, you can know a
      -- file filetype with :set ft
      -- Custom snippets

      -- #####################################################################
      --                            Markdown
      -- #####################################################################

      local function add_show_line_numbers()
        return " showLineNumbers={true}"
      end

      local function add_two_slash()
        return " twoslash"
      end

      local function add_collapse(state)
        return string.format(" collapse={%s}", tostring(state))
      end

      -- Default configuration
      local default_options = {
        showLineNumbers = true,
        collapse = true,
        twoslash = false,
      }

      -- Helper function to create code block snippets
      local function create_code_block_snippet(lang, user_options)
        -- Merge user options with defaults
        local options = {}
        for k, v in pairs(default_options) do
          options[k] = user_options and user_options[k] ~= nil and user_options[k] or v
        end

        -- Build additional options string
        local additionalOptions = ""
        if options.showLineNumbers then
          additionalOptions = additionalOptions .. add_show_line_numbers()
        end
        if options.collapse then
          additionalOptions = additionalOptions .. add_collapse(options.collapse)
        end
        if options.twoslash then
          additionalOptions = additionalOptions .. add_two_slash()
        end

        return s({
          trig = lang,
          name = "Codeblock",
          desc = lang .. " codeblock",
        }, {
          t({ "```" .. lang .. additionalOptions, "" }),
          i(1),
          t({ "", "```" }),
        })
      end

      -- Helper function to create code block snippets diff
      local function create_code_block_snippet_diff(lang, user_options)
        -- Merge user options with defaults
        local options = {}
        for k, v in pairs(default_options) do
          options[k] = user_options and user_options[k] ~= nil and user_options[k] or v
        end

        -- Build additional options string
        local additionalOptions = ""
        if options.showLineNumbers then
          additionalOptions = additionalOptions .. add_show_line_numbers()
        end
        if options.collapse then
          additionalOptions = additionalOptions .. add_collapse(options.collapse)
        end
        if options.twoslash then
          additionalOptions = additionalOptions .. add_two_slash()
        end

        return s({
          trig = "diff" .. lang,
          name = "Codeblock",
          desc = lang .. " codeblock",
        }, {
          t({ "```" .. lang .. additionalOptions, "" }),
          i(1),
          t({ "", "```" }),
        })
      end

      -- Define languages for code blocks
      local languages = {
        -- Programming Languages
        lua = { showLineNumbers = true, collapse = true },
        python = { showLineNumbers = true, collapse = true },
        javascript = { showLineNumbers = true, collapse = true, twoslash = true },
        js = { showLineNumbers = true, collapse = true, twoslash = true },
        typescript = { showLineNumbers = true, collapse = true, twoslash = true },
        ts = { showLineNumbers = true, collapse = true, twoslash = true },
        go = { showLineNumbers = true, collapse = true },
        rust = { showLineNumbers = true, collapse = true },
        java = { showLineNumbers = true, collapse = true },
        cpp = { showLineNumbers = true, collapse = true },

        -- Shell Languages
        bash = { showLineNumbers = true },
        sh = { showLineNumbers = true },
        fish = { showLineNumbers = true },

        -- Markup and Config Languages
        html = { showLineNumbers = true },
        css = { showLineNumbers = true },
        markdown = { showLineNumbers = false },
        markdown_inline = { showLineNumbers = false },
        yaml = { showLineNumbers = true },
        json = { showLineNumbers = true },
        jsonc = { showLineNumbers = true },

        -- Other Languages
        sql = { showLineNumbers = true },
        regex = { showLineNumbers = false },
        csv = { showLineNumbers = false },
        dockerfile = { showLineNumbers = true },
        gleam = { showLineNumbers = true },
        ex = { showLineNumbers = true },
        exs = { showLineNumbers = true },
        templ = { showLineNumbers = true },
        txt = { showLineNumbers = false },
      }

      -- Generate snippets for all languages

      local snippets = {}
      for lang, options in pairs(languages) do
        table.insert(snippets, create_code_block_snippet(lang, options))
      end

      for lang, options in pairs(languages) do
        table.insert(snippets, create_code_block_snippet_diff(lang, options))
      end

      table.insert(
        snippets,
        s({
          trig = "linkt",
          name = "Add this -> []()",
          desc = "Add this -> []()",
        }, {
          t("["),
          i(1),
          t("]("),
          i(2),
        })
      )

      -- <a href="https://fishshell.com/" target="_blank">Fish website</a>

      table.insert(
        snippets,
        s({
          trig = "linkmdx",
          name = "add anchor tag with new _blank in .mdx",
          desc = "add anchor tag with new _blank in .mdx",
        }, {
          t('<a href="'),
          f(clipboard, {}),
          t('" target="_blank"'),
          i(1),
          t("</a>"),
        })
      )

      table.insert(
        snippets,
        s({
          trig = "file",
          name = "add file ##### **filename**",
          desc = "add file ##### **filename**",
        }, {
          t("##### **"),
          f(clipboard, {}),
          t("**"),
        })
      )

      ls.add_snippets("markdown", snippets)

      ls.add_snippets("mdx", {
        s({
          trig = "linkmdx",
          name = "add anchor tag with new _blank in .mdx",
          desc = "add anchor tag with new _blank in .mdx",
        }, {
          t('<a href=">'),
          f(clipboard, {}),
          t('" target="_blank">'),
          i(1),
          t("</a>"),
        }),
      })

      -- #####################################################################
      --                         all the filetypes
      -- #####################################################################
      -- ls.add_snippets("all", {
      --   s({
      --     trig = "workflow",
      --     name = "Add this -> lamw25wmal",
      --     desc = "Add this -> lamw25wmal",
      --   }, {
      --     t("lamw25wmal"),
      --   }),
      --
      --   s({
      --     trig = "lam",
      --     name = "Add this -> lamw25wmal",
      --     desc = "Add this -> lamw25wmal",
      --   }, {
      --     t("lamw25wmal"),
      --   }),
      --
      --   s({
      --     trig = "mw25",
      --     name = "Add this -> lamw25wmal",
      --     desc = "Add this -> lamw25wmal",
      --   }, {
      --     t("lamw25wmal"),
      --   }),
      -- })
    end,
  },
}
