return {
  {
    "rolv-apneseth/tfm.nvim",
    config = function()
      local tfm = require("tfm")
      tfm.setup({
        -- Possible choices: "ranger" | "nnn" | "lf" | "vifm" | "yazi" (default)
        file_manager = "yazi",
        -- • "none": No border (default).
        -- • "single": A single line box.
        -- • "double": A double line box.
        -- • "rounded": Like "single", but with rounded corners ("╭"
        --   etc.).
        -- • "solid": Adds padding by a single whitespace cell.
        -- • "shadow": A drop shadow effect by blending with the
        ui = {
          border = "rounded",
          height = 0.9,
          width = 0.9,
          x = 0.5,
          y = 0.5,
        },
      })
    end,
  },
}
