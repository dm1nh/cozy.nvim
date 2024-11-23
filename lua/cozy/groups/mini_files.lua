local Util = require("cozy.util")

local M = {}

M.url = "https://github.com/echasnovski/mini.files"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniFilesBorder         = { fg = Util.blend_bg(c.accent, 0.5, c.bg), bg = c.float.bg},
    MiniFilesBorderModified = "DiagnosticFloatingWarn",
    MiniFilesCursorLine     = "CursorLine",
    MiniFilesDirectory      = "Directory",
    MiniFilesFile           = { fg = c.float.fg },
    MiniFilesNormal         = "NormalFloat",
    MiniFilesTitle          = "FloatTitle",
    MiniFilesTitleFocused   = { fg = c.green1, bg = c.float.bg, bold = true },
  }
end

return M
