local Util = require("lazyvim.util")

local map = require("config.keymaps.mapFn")
-- gitui
-- please install gitui first
map("n", "<leader>gg", function()
  Util.float_term({ "gitui" }, { cwd = Util.get_root() })
end, { desc = "GitUI (root dir)" })
map("n", "<leader>gG", function()
  Util.float_term({ "gitui" })
end, { desc = "GitUI (cwd)" })
