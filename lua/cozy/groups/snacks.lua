local Util = require("cozy.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.syn.comment, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug   = { fg = c.syn.comment },
    SnacksNotifierTitleDebug  = { fg = c.syn.comment },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = Util.blend_bg(c.diag.error, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError   = { fg = c.diag.error },
    SnacksNotifierTitleError  = { fg = c.diag.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(c.diag.info, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo    = { fg = c.diag.info },
    SnacksNotifierTitleInfo   = { fg = c.diag.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.purple1, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace   = { fg = c.purple1 },
    SnacksNotifierTitleTrace  = { fg = c.purple1 },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(c.diag.warning, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn    = { fg = c.diag.warning },
    SnacksNotifierTitleWarn   = { fg = c.diag.warning },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.fg },
    SnacksDashboardFooter     = { fg = c.purple1 },
    SnacksDashboardHeader     = { fg = c.accent },
    SnacksDashboardIcon       = { fg = c.blue1 },
    SnacksDashboardKey        = { fg = c.orange1 },
    SnacksDashboardSpecial    = { fg = c.purple1 },
    SnacksDashboardDir        = { fg = c.dark5 },
  }
end

return M
