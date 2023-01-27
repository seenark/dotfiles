-- options
local opt = vim.opt
-- opt.clipboard = "unnamedplus"
opt.clipboard = ""
opt.relativenumber = true
opt.scrolloff = 8
-- opt.termguicolors = true
-- opt.guifont = {"Hack Nerd Font", ":h18"}

-- Text behaviour
opt.iskeyword:append "-" -- hyphenated words regognized by searchs
opt.formatoptions:remove("cro") -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.

-- api
local api = vim.api
api.nvim_set_hl(0, "Normal", {bg = "none"})
api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

-- neovide
local g = vim.g
g.neovide_transparency = 0.9
g.transparency = 0.8
-- g.neovide_background_color = "rgba(33,33,33, 0.9)"
-- g.neovide_floating_blur_amount_x = 2.0
-- g.neovide_floating_blur_amount_y = 2.0
g.neovide_cursor_vfx_mode = "railgun"


-- if vim.g.neovide == 1 then
--   g.neovide_scale_factor = 1.4
  -- g.neovide_input_use_logo = 1
  -- vim.api.nvim_set_keymap('', '<D-v', '+p<CR>', {noremap = true, silent = true})
  -- vim.api.nvim_set_keymap('!', '<D-v', '<CR>+', {noremap = true, silent = true})
  -- vim.api.nvim_set_keymap('t', '<D-v', '<CR>+', {noremap = true, silent = true})
  -- vim.api.nvim_set_keymap('v', '<D-v', '<CR>+', {noremap = true, silent = true})
-- end

-- auto close if there is only NvimTree
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
  pattern = "NvimTree_*",
  callback = function()
    local layout = vim.api.nvim_call_function("winlayout", {})
    if
      layout[1] == "leaf"
      and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
      and layout[3] == nil
    then
      vim.cmd "confirm quit"
    end
  end,
})
