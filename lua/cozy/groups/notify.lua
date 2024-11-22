local Util = require("cozy.util")

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NotifyBackground  = { fg = c.fg, bg = c.bg },
    NotifyDEBUGBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = Util.blend_bg(c.syn.comment, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGIcon   = { fg = c.syn.comment },
    NotifyDEBUGTitle  = { fg = c.syn.comment },
    NotifyERRORBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyERRORBorder = { fg = Util.blend_bg(c.diag.error, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyERRORIcon   = { fg = c.diag.error },
    NotifyERRORTitle  = { fg = c.diag.error },
    NotifyINFOBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyINFOBorder  = { fg = Util.blend_bg(c.diag.info, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyINFOIcon    = { fg = c.diag.info },
    NotifyINFOTitle   = { fg = c.diag.info },
    NotifyTRACEBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = Util.blend_bg(c.purple1, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyTRACEIcon   = { fg = c.purple1 },
    NotifyTRACETitle  = { fg = c.purple1 },
    NotifyWARNBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyWARNBorder  = { fg = Util.blend_bg(c.diag.warning, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyWARNIcon    = { fg = c.diag.warning },
    NotifyWARNTitle   = { fg = c.diag.warning },
  }
end

return M
