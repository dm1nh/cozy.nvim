local M = {}

M.url = "https://github.com/echasnovski/mini.statusline"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.fg_dark, bg = c.fg_gutter },
    MiniStatuslineFileinfo    = { fg = c.fg_dark, bg = c.fg_gutter },
    MiniStatuslineFilename    = { fg = c.fg_dark, bg = c.bg_highlight },
    MiniStatuslineInactive    = { fg = c.accent, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.yellow1, bold = true },
    MiniStatuslineModeInsert  = { fg = c.bg, bg = c.green1, bold = true },
    MiniStatuslineModeNormal  = { fg = c.bg, bg = c.cyan1, bold = true },
    MiniStatuslineModeOther   = { fg = c.bg, bg = c.matcha1, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.red1, bold = true },
    MiniStatuslineModeVisual  = { fg = c.bg, bg = c.magenta1, bold = true },
  }
end

return M
