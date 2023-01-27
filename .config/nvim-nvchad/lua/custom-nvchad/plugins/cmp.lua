local lspkind_comparator = function(conf)
  local lsp_types = require("cmp.types").lsp
  return function(entry1, entry2)
    if entry1.source.name ~= "nvim_lsp" then
      if entry2.source.name == "nvim_lsp" then
        return false
      else
        return nil
      end
    end
    local kind1 = lsp_types.CompletionItemKind[entry1:get_kind()]
    local kind2 = lsp_types.CompletionItemKind[entry2:get_kind()]

    local priority1 = conf.kind_priority[kind1] or 0
    local priority2 = conf.kind_priority[kind2] or 0
    if priority1 == priority2 then
      return nil
    end
    return priority2 < priority1
  end
end

local label_comparator = function(entry1, entry2)
  return entry1.completion_item.label < entry2.completion_item.label
end

return function()
  -- vim.api.nvim_set_hl(0, "CmpItemAbbr", {fg = "#aaafff", bg="NONE"})
  -- vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {fg = "#fdff00", bg="NONE"})
  -- vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {fg = "#ec5300", bg="NONE"})
  return {
    window = {
      completion = {
        -- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
        col_offset = -3,
        side_padding = 0,
      },
    },
    sorting = {
        comparators = {
        lspkind_comparator({
          kind_priority = {
            Field = 11,
            Property = 11,
            Constant = 10,
            Enum = 10,
            EnumMember = 10,
            Event = 10,
            Function = 10,
            Method = 10,
            Operator = 10,
            Reference = 10,
            Struct = 10,
            Variable = 11,
            File = 8,
            Folder = 8,
            Class = 5,
            Color = 5,
            Module = 5,
            Keyword = 2,
            Constructor = 1,
            Interface = 1,
            Snippet = 0,
            Text = 1,
            TypeParameter = 1,
            Unit = 1,
            Value = 1,
          },
        }),
        label_comparator,
      },
    },
    formatting = {
      -- fields = { "kind", "abbr", "menu" },
      --       format = function(_, vim_item)
      --   local icons = require("nvchad_ui.icons").lspkind
      --   vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
      --   return vim_item
      -- end,
      format = function(entry, vim_item)
        local kind = vim_item.kind -- -> Class, Method, Variables...
        local icons = require("nvchad_ui.icons").lspkind
        -- vim_item.kind = string.format("%s ", icons[vim_item.kind])
        local source = entry.source.name
        vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
        vim_item.menu = "[" .. source .. "]"
        return vim_item
      end,
    },
  }
end
