local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    FzfLuaBorder        = { fg = c.fg_border_highlight, bg = c.float.bg },
    FzfLuaCursor        = "IncSearch",
    FzfLuaDirPart       = { fg = c.fg_dark },
    FzfLuaFilePart      = "FzfLuaFzfNormal",
    FzfLuaFzfCursorLine = "Visual",
    FzfLuaFzfNormal     = { fg = c.fg },
    FzfLuaFzfPointer    = { fg = c.magenta2 },
    FzfLuaFzfSeparator  = { fg = c.orange1, bg = c.float.bg },
    FzfLuaHeaderBind    = "@punctuation.special",
    FzfLuaHeaderText    = "Title",
    FzfLuaNormal        = { fg = c.fg, bg = c.float.bg },
    FzfLuaPath          = "Directory",
    FzfLuaPreviewTitle  = { fg = c.fg_border_highlight, bg = c.float.bg },
    FzfLuaTitle         = { fg = c.orange1, bg = c.float.bg },
  }
end

return M
