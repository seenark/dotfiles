local map = require("config.keymaps.mapFn")
-- crates
local crates = require("crates")
-- map("n", "<leader>rcu", function()
--   require("crates").upgrade_all_crates()
-- end, { desc = "Upgrate all crates version" })

local opts = { silent = true }

map("n", "<leader>rct", function()
  crates.toggle()
end, { desc = "Rust Crates toggle", silent = true })

map("n", "<leader>rcr", crates.reload, { desc = "Rust Crates reload", silent = true })
map("n", "<leader>rcv", crates.show_versions_popup, { desc = "Rust Crates version popup", silent = true })
map("n", "<leader>rcf", crates.show_features_popup, { desc = "Rust Crates features popup", silent = true })
map("n", "<leader>rcd", crates.show_dependencies_popup, { desc = "Rust Crates dependencies popup", silent = true })

map("n", "<leader>rcu", crates.update_crate, { desc = "Rust Crates update single crate", silent = true })
map("v", "<leader>rcu", crates.update_crates, { desc = "Rust Crates highlight and update crates", silent = true })
map("n", "<leader>rca", crates.update_all_crates, { desc = "Rust Crates update all crates", silent = true })
map("n", "<leader>rcU", crates.upgrade_crate, { desc = "Rust Crates upgrade single crate", silent = true })
map("v", "<leader>rcU", crates.upgrade_crates, { desc = "Rust Crates highlight and upgrade crates", silent = true })
map("n", "<leader>rcA", crates.upgrade_all_crates, { desc = "Rust Crates upgrade all crates", silent = true })

map("n", "<leader>rcH", crates.open_homepage, { desc = "Rust Crates open homepage", silent = true })
map("n", "<leader>rcR", crates.open_repository, { desc = "Rust Crates open repository", silent = true })
map("n", "<leader>rcD", crates.open_documentation, { desc = "Rust Crates open documentation", silent = true })
map("n", "<leader>rcC", crates.open_crates_io, { desc = "Rust Crates open crates.io", silent = true })

local function show_documentation()
  local filetype = vim.bo.filetype
  if vim.tbl_contains({ "vim", "help" }, filetype) then
    vim.cmd("h " .. vim.fn.expand("<cword>"))
  elseif vim.tbl_contains({ "man" }, filetype) then
    vim.cmd("Man " .. vim.fn.expand("<cword>"))
  elseif vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
    require("crates").show_popup()
  else
    vim.lsp.buf.hover()
  end
end

map("n", "K", show_documentation, { silent = true })
