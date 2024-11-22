local Util = require("cozy.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  local dark = opts.styles.sidebars == "transparent" and c.none
    or Util.blend(c.bg_sidebar, 0.8, opts.style == "day" and c.accent or "#000000")
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.fg_gutter },
    NeoTreeFileName            = { fg = c.fg },
    NeoTreeGitModified         = { fg = c.orange1 },
    NeoTreeGitStaged           = { fg = c.green1 },
    NeoTreeGitUntracked        = { fg = c.magenta1 },
    NeoTreeNormal              = { fg = c.fg, bg = c.bg_sidebar },
    NeoTreeNormalNC            = { fg = c.fg, bg = c.bg_sidebar },
    NeoTreeTabActive           = { fg = c.accent, bg = c.bg_dark, bold = true },
    NeoTreeTabInactive         = { fg = c.dark3, bg = dark },
    NeoTreeTabSeparatorActive  = { fg = c.accent, bg = c.bg_dark },
    NeoTreeTabSeparatorInactive= { fg = c.bg, bg = dark },
  }
end

return M
