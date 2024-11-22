local M = {}

M.url = "https://github.com/echasnovski/mini.files"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniFilesBorder         = "FloatBorder",
    MiniFilesBorderModified = "DiagnosticFloatingWarn",
    MiniFilesCursorLine     = "CursorLine",
    MiniFilesDirectory      = "Directory",
    MiniFilesFile           = { fg = c.float.fg },
    MiniFilesNormal         = "NormalFloat",
    MiniFilesTitle          = "FloatTitle",
    MiniFilesTitleFocused   = { fg = c.fg_border_highlight, bg = c.float.bg, bold = true },
  }
end

return M
