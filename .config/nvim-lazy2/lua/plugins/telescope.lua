local Util = require("lazyvim.util")
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fw", Util.telescope("live_grep"), desc = "Find in Files (Grep)" },
  },
}
