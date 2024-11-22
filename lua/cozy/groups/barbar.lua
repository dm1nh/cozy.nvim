local Util = require("cozy.util")

local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    BufferAlternate       = { bg = c.fg_gutter, fg = c.fg },
    BufferAlternateERROR  = { bg = c.fg_gutter, fg = c.diag.error },
    BufferAlternateHINT   = { bg = c.fg_gutter, fg = c.diag.hint },
    BufferAlternateINFO   = { bg = c.fg_gutter, fg = c.diag.info },
    BufferAlternateIndex  = { bg = c.fg_gutter, fg = c.diag.info },
    BufferAlternateMod    = { bg = c.fg_gutter, fg = c.diag.warning },
    BufferAlternateSign   = { bg = c.fg_gutter, fg = c.diag.info },
    BufferAlternateTarget = { bg = c.fg_gutter, fg = c.red1 },
    BufferAlternateWARN   = { bg = c.fg_gutter, fg = c.diag.warning },
    BufferCurrent         = { bg = c.bg, fg = c.fg },
    BufferCurrentERROR    = { bg = c.bg, fg = c.diag.error },
    BufferCurrentHINT     = { bg = c.bg, fg = c.diag.hint },
    BufferCurrentINFO     = { bg = c.bg, fg = c.diag.info },
    BufferCurrentIndex    = { bg = c.bg, fg = c.diag.info },
    BufferCurrentMod      = { bg = c.bg, fg = c.diag.warning },
    BufferCurrentSign     = { bg = c.bg, fg = c.bg },
    BufferCurrentTarget   = { bg = c.bg, fg = c.red1 },
    BufferCurrentWARN     = { bg = c.bg, fg = c.diag.warning },
    BufferInactive        = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.dark5, 0.8) },
    BufferInactiveERROR   = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.diag.error, 0.8) },
    BufferInactiveHINT    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.diag.hint, 0.8) },
    BufferInactiveINFO    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.diag.info, 0.8) },
    BufferInactiveIndex   = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.dark5 },
    BufferInactiveMod     = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.diag.warning, 0.8) },
    BufferInactiveSign    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.bg },
    BufferInactiveTarget  = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.red1 },
    BufferInactiveWARN    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.diag.warning, 0.8) },
    BufferOffset          = { bg = c.bg_statusline, fg = c.dark5 },
    BufferTabpageFill     = { bg = Util.blend_bg(c.bg_highlight, 0.8), fg = c.dark5 },
    BufferTabpages        = { bg = c.bg_statusline, fg = c.none },
    BufferVisible         = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleERROR    = { bg = c.bg_statusline, fg = c.diag.error },
    BufferVisibleHINT     = { bg = c.bg_statusline, fg = c.diag.hint },
    BufferVisibleINFO     = { bg = c.bg_statusline, fg = c.diag.info },
    BufferVisibleIndex    = { bg = c.bg_statusline, fg = c.diag.info },
    BufferVisibleMod      = { bg = c.bg_statusline, fg = c.diag.warning },
    BufferVisibleSign     = { bg = c.bg_statusline, fg = c.diag.info },
    BufferVisibleTarget   = { bg = c.bg_statusline, fg = c.red1 },
    BufferVisibleWARN     = { bg = c.bg_statusline, fg = c.diag.warning },
  }
end

return M
