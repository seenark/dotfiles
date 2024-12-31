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

      -- Helper function to create code block snippets
      local function create_code_block_snippet(lang)
        return s({
          trig = lang,
          name = "Codeblock",
          desc = lang .. " codeblock",
        }, {
          t({ "```" .. lang, "" }),
          i(1),
          t({ "", "```" }),
        })
      end

      -- Define languages for code blocks
      local languages = {
        "txt",
        "lua",
        "sql",
        "go",
        "regex",
        "bash",
        "markdown",
        "markdown_inline",
        "yaml",
        "json",
        "jsonc",
        "cpp",
        "csv",
        "java",
        "javascript",
        "ts",
        "typescript",
        "python",
        "dockerfile",
        "html",
        "css",
        "templ",
      }

      -- Generate snippets for all languages
      local snippets = {}

      for _, lang in ipairs(languages) do
        table.insert(snippets, create_code_block_snippet(lang))
      end

      table.insert(
        snippets,
        s({
          trig = "linkt",
          name = 'Add this -> [](){:target="_blank"}',
          desc = 'Add this -> [](){:target="_blank"}',
        }, {
          t("["),
          i(1),
          t("]("),
          i(2),
          t('){:target="_blank"}'),
        })
      )

      table.insert(
        snippets,
        s({
          trig = "todo",
          name = "Add TODO: item",
          desc = "Add TODO: item",
        }, {
          t("<!-- TODO: "),
          i(1),
          t(" -->"),
        })
      )

      -- <a href="https://fishshell.com/" target="_blank">Fish website</a>

      table.insert(
        snippets,
        s({
          trig = "linkmdx",
          name = "add anchor tag with new _blank in .mdx",
          desc = "add anchor tag with new _blank in .mdx",
        }),
        {
          t('<a href="'),
          f(clipboard, {}),
          t('" target="_blank"'),
          i(1),
          t("</a>"),
        }
      )

      ls.add_snippets("markdown", snippets)

      ls.add_snippets("mdx", {
        s({
          trig = "linkmdx",
          name = "add anchor tag with new _blank in .mdx",
          desc = "add anchor tag with new _blank in .mdx",
        }, {
          t('<a href="'),
          f(clipboard, {}),
          t('" target="_blank">'),
          i(1),
          t("</a>"),
        }),
      })

      ls.add_snippets("mdx", {
        s("linkmdx2", {
          t('<a href="'),
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

      return opts
    end,
  },
}
